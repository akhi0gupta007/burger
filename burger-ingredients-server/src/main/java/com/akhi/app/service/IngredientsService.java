package com.akhi.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.akhi.app.model.Ingredients;
import com.akhi.app.repository.IngredientsRepository;

@Service
public class IngredientsService {
	
	@Autowired
	private IngredientsRepository repo;

	public List<Ingredients> getIngredients() {
		return repo.findAll();
	}

}
