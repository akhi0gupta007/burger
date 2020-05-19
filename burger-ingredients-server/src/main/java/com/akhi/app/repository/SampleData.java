package com.akhi.app.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;
import org.springframework.util.CollectionUtils;

import com.akhi.app.model.ingredients.Ingredients;
import com.akhi.app.model.ingredients.OrderData;
import com.akhi.app.model.ingredients.Orders;



@Component
public class SampleData implements ApplicationRunner {

	@Autowired
	IngredientRepository ingredientsRepo;

	@Autowired
	OrderRepository orderRepo;

	@Override
	public void run(ApplicationArguments args) throws Exception {
		if (enterSampleData()) {
			Orders order = new Orders.Builder().withPrice(123.3).withUserId("akhilesh")
					.build();
			Ingredients ingredients0 = new Ingredients(ingredientsRepo.findById(1).get(), order, 1);
			Ingredients ingredients1 = new Ingredients(ingredientsRepo.findById(2).get(), order, 2);
			Ingredients ingredients2 = new Ingredients(ingredientsRepo.findById(3).get(), order, 1);
			List<Ingredients> ingredients = new ArrayList<>();
			ingredients.add(ingredients0);
			ingredients.add(ingredients1);
			ingredients.add(ingredients2);
			OrderData orderData = new OrderData(order, "India", "a@b.com", "fastest", "Akhilesh", "123", "110071");
			order.setOrderData(orderData);
			order.setIngredients(ingredients);
			
			
			orderRepo.save(order);
		}
	}

	private boolean enterSampleData() {
		if (CollectionUtils.isEmpty(orderRepo.findAll()))
			return true;
		else
			return false;
	}

}
