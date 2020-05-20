package com.akhi.app.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.context.annotation.Bean;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.web.client.RestTemplate;

import com.akhi.app.hystrix.CommonHystrixCommand;
import com.akhi.app.model.ingredients.Ingredients;
import com.akhi.app.model.ingredients.Orders;
import com.akhi.app.model.pricing.BurgerPricing;
import com.akhi.app.repository.OrderRepository;

@Service
public class OrderService {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	OrderRepository orderRepo;

	@Autowired
	RestTemplate restTemplate;

	@Bean
	@LoadBalanced
	RestTemplate getRestTemplate(RestTemplateBuilder builder) {
		return builder.build();
	}

	org.slf4j.Logger log = LoggerFactory.getLogger(getClass());

	public List<Orders> getOrdersByUser(String userId) {
		return orderRepo.findByUserId(userId);
	}

	public Orders save(Orders orders) {

		orders.getIngredients().forEach(ingredient -> {
			ingredient.setOrder(orders); // working for two way mapping
		});
		orders.getOrderData().setOrder(orders); // working for two way mapping
		Double totalPrice = calculatePrice(orders, fetchBurgerPricings());
		orders.setPrice(totalPrice);
		return orderRepo.save(orders);
	}

	private Double calculatePrice(Orders orders, Map<Integer, Double> listings) {
		Double totalPrice = 4.0; // base price

		if (!CollectionUtils.isEmpty(listings)) {
			for (Ingredients ing : orders.getIngredients()) {
				totalPrice = totalPrice + (ing.getQuantity() * listings.get(ing.getIngredient().getId()));
			}
			logger.info("calculatePrice () Set total price of burger as {}", totalPrice);
		} else {
			logger.error("calculatePrice () could not calculate price");
		}

		return totalPrice;
	}

	Map<Integer, Double> fetchBurgerPricings() {
		Map<Integer, Double> pricings = new HashMap<>();

		//BurgerPriceCommand priceCommand = new BurgerPriceCommand(restTemplate);//This is non generic hystrix implementation
		final String url = "http://BURGER-PRICING-SERVER/burger-price";

		CommonHystrixCommand<List<BurgerPricing>> priceCommand = new CommonHystrixCommand<>("default", () -> {
			return restTemplate
					.exchange(url, HttpMethod.GET, null, new ParameterizedTypeReference<List<BurgerPricing>>() {
					}).getBody();
		}, () -> new ArrayList<BurgerPricing>());

		Future<List<BurgerPricing>> body = priceCommand.queue();
		List<BurgerPricing> prices = null;
		try {
			prices = body.get();
		} catch (InterruptedException | ExecutionException e) {
			e.printStackTrace();
		}
		
		prices.forEach(price -> {
			pricings.put(price.getIngredient(), price.getPrice());
		});

		return pricings;
	}
}
