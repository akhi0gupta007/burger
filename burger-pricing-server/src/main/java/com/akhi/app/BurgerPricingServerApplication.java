package com.akhi.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EntityScan(basePackages = "com.akhi.app.model.pricing")
@EnableEurekaClient
public class BurgerPricingServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(BurgerPricingServerApplication.class, args);
	}

}
