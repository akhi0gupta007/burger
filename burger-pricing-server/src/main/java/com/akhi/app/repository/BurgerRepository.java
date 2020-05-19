package com.akhi.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.akhi.app.model.pricing.BurgerPricing;

public interface BurgerRepository extends JpaRepository<BurgerPricing, Integer>{

}
