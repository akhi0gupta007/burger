package com.akhi.app.hystrix;

import java.util.ArrayList;
import java.util.List;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import com.akhi.app.model.pricing.BurgerPricing;
import com.netflix.hystrix.HystrixCommand;
import com.netflix.hystrix.HystrixCommandGroupKey;

public class BurgerPriceCommand extends HystrixCommand<List<BurgerPricing>> {

	RestTemplate restTemplate;
	
	public  BurgerPriceCommand(RestTemplate restTemplate) {
		super(HystrixCommandGroupKey.Factory.asKey("default"));
		this.restTemplate = restTemplate;
	}
	@Override
	protected List<BurgerPricing> run() throws Exception {
		String url = "http://BURGER-PRICING-SERVER/burger-price";
		ResponseEntity<List<BurgerPricing>> response = restTemplate.exchange(url, HttpMethod.GET, null,
				new ParameterizedTypeReference<List<BurgerPricing>>() {
				});
		return response.getBody();
	}
	@Override
	protected List<BurgerPricing> getFallback() {
		return new ArrayList<BurgerPricing>();
	}
	
	
}
