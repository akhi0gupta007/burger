package com.akhi.app.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.akhi.app.model.ingredients.Orders;


public interface OrderRepository extends JpaRepository<Orders, Integer>{	
	List<Orders> findByUserId(String userId); 

}
