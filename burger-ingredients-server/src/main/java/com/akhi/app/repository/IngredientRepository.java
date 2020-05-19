package com.akhi.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.akhi.app.model.ingredients.Ingredient;


public interface IngredientRepository extends JpaRepository<Ingredient, Integer> {

}
