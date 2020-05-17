package com.akhi.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;

@SpringBootApplication
@EnableDiscoveryClient
@EnableFeignClients("com.akhi.app")
@EnableResourceServer
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class BurgerIngredientsServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(BurgerIngredientsServerApplication.class, args);
	}

}
