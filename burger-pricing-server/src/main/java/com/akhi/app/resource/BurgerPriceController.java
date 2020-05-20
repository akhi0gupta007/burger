package com.akhi.app.resource;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.akhi.app.model.pricing.BurgerPricing;
import com.akhi.app.service.BurgerPriceServiceImpl;

@RestController
public class BurgerPriceController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	BurgerPriceServiceImpl service;
	
	@Autowired
	Environment environment;
	
	@GetMapping("/burger-price")
	public ResponseEntity<List<BurgerPricing>> getIngredients(){
		 List<BurgerPricing> ingredients = service.getPricings();
		 logger.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>Serving from PORT {}",environment.getProperty("local.server.port"));
		 return new ResponseEntity<List<BurgerPricing>>(ingredients,HttpStatus.OK);
	}
}
