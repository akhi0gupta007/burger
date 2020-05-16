package com.akhi.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.akhi.app.model.Ingredients;

public interface IngredientsRepository extends JpaRepository<Ingredients, Integer> {

}
