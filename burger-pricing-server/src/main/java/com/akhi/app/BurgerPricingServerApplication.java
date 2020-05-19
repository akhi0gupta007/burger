package com.akhi.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan(basePackages = "com.akhi.app.model.pricing")
public class BurgerPricingServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(BurgerPricingServerApplication.class, args);
	}

}
