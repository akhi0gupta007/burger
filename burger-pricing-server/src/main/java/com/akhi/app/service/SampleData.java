package com.akhi.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.util.CollectionUtils;
import org.springframework.web.client.RestTemplate;

import com.akhi.app.model.ingredients.Ingredient;
import com.akhi.app.model.pricing.BurgerPricing;
import com.akhi.app.repository.BurgerRepository;

@Component
public class SampleData implements ApplicationRunner {

	@Autowired
	BurgerRepository burgerPriceRep;

	@Autowired
	RestTemplate restTemplate;

	@Bean
	RestTemplate getRestTemplate(RestTemplateBuilder builder) {
		return builder.build();
	}

	@Override
	public void run(ApplicationArguments args) throws Exception {
		if (enterSampleData()) {
			List<Ingredient> ingrdients = getIngredients();
			ingrdients.forEach(ing -> {
				BurgerPricing price = new BurgerPricing();
				price.setIngredient(ing.getId());
				price.setPrice(2.0);
				burgerPriceRep.save(price);
			});
		}
	}

	private List<Ingredient> getIngredients() {
		String url = "http://localhost:9000/ingredients/";
		ResponseEntity<List<Ingredient>> response = restTemplate.exchange(url, HttpMethod.GET, null, new ParameterizedTypeReference<List<Ingredient>>() {
		});
		List<Ingredient> body = response.getBody();

		//List<?> ingredients = restTemplate.getForObject("http://localhost:9000/ingredients/", List.class);
		return body;
	}

	private boolean enterSampleData() {
		if (CollectionUtils.isEmpty(burgerPriceRep.findAll()))
			return true;
		else
			return false;
	}

}
