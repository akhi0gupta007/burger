package com.akhi.app.resource;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.akhi.app.model.Ingredients;
import com.akhi.app.service.IngredientsService;

@RestController
public class IngredientsResource {

	@Autowired
	private IngredientsService ingredientsService;
	
	@GetMapping("/ingredients")
	public ResponseEntity<List<Ingredients>> getIngredients(){
		 List<Ingredients> ingredients = ingredientsService.getIngredients();		 
		 return new ResponseEntity<List<Ingredients>>(ingredients,HttpStatus.OK);
	}
	
}
