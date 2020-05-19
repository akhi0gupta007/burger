package com.akhi.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;

public class BurgerProcessTaskRunner implements CommandLineRunner {

	@Autowired
	BurgerOrderService burgerOrderService;

	@Override
	public void run(String... args) throws Exception {

		if (args.length > 0) {
			if (burgerOrderService.validatePin(args[0])) {
				System.out.println("Valid Pincode");
			} else {
				System.out.println("Invalid Pincode");
			}
		} else {
			System.out.println("Task running with Invalid Arguments");
		}

	}
}
