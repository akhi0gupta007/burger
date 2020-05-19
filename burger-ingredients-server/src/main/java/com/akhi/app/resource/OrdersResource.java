package com.akhi.app.resource;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.akhi.app.model.ingredients.Orders;
import com.akhi.app.service.OrderService;

@RestController
public class OrdersResource {
	@Autowired
	private OrderService orderService;

	@GetMapping("/orders")
	@PreAuthorize("hasAuthority('read_profile')")
	public ResponseEntity<List<Orders>> getOrders(@RequestParam("userId") String userId) {
		List<Orders> orders = orderService.getOrdersByUser(userId);
		return new ResponseEntity<List<Orders>>(orders, HttpStatus.OK);
	}
	
	@PostMapping("/orders")
	@PreAuthorize("hasAuthority('create_profile')") //permission level check
//	@PreAuthorize("hasRole('ROLE_editor')") // role level check 
	public ResponseEntity<Orders> save(@RequestBody Orders orders) {
		Orders savedOrders = orderService.save(orders);
		return new ResponseEntity<Orders>(savedOrders, HttpStatus.CREATED);
	}
	
	
}
