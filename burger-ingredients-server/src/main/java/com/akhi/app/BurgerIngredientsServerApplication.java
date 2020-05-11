package com.akhi.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@EnableDiscoveryClient
@EnableFeignClients("com.akhi.app")
public class BurgerIngredientsServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(BurgerIngredientsServerApplication.class, args);
	}

}
