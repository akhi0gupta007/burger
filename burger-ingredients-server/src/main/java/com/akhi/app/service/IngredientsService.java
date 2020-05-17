package com.akhi.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.akhi.app.model.Ingredient;
import com.akhi.app.repository.IngredientRepository;

@Service
public class IngredientsService {
	
	@Autowired
	private IngredientRepository repo;

	public List<Ingredient> getIngredients() {
		return repo.findAll();
	}

}
