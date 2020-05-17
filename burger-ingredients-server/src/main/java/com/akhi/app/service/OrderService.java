package com.akhi.app.service;

import java.util.List;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.akhi.app.model.Orders;
import com.akhi.app.repository.OrderRepository;

@Service
public class OrderService {

	@Autowired
	OrderRepository orderRepo;
	
	org.slf4j.Logger log = LoggerFactory.getLogger(getClass());

	public List<Orders> getOrdersByUser(String userId) {		
		return orderRepo.findByUserId(userId);
	}

	public Orders save(Orders orders) {		
		
		orders.getIngredients().forEach(ingredient -> {
			ingredient.setOrder(orders); //working for two way mapping
		});	
		orders.getOrderData().setOrder(orders); //working for two way mapping	
			
		return orderRepo.save(orders);
	}
}
