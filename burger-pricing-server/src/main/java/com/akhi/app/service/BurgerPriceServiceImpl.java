package com.akhi.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.akhi.app.model.pricing.BurgerPricing;
import com.akhi.app.repository.BurgerRepository;
@Service
public class BurgerPriceServiceImpl {

	@Autowired
	BurgerRepository burgerRepo;

	
	BurgerPricing save(BurgerPricing burgerPricing) {
		return burgerRepo.save(burgerPricing);
	}


	public List<BurgerPricing> getPricings() {
		return burgerRepo.findAll();
	}
}
