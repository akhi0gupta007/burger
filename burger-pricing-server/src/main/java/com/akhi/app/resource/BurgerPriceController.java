package com.akhi.app.resource;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.akhi.app.model.pricing.BurgerPricing;
import com.akhi.app.service.BurgerPriceServiceImpl;

@RestController
public class BurgerPriceController {

	
	@Autowired
	BurgerPriceServiceImpl service;
	
	@GetMapping("/burger-price")
	public ResponseEntity<List<BurgerPricing>> getIngredients(){
		 List<BurgerPricing> ingredients = service.getPricings();		 
		 return new ResponseEntity<List<BurgerPricing>>(ingredients,HttpStatus.OK);
	}
}
