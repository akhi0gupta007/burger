package com.akhi.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.cloud.client.circuitbreaker.EnableCircuitBreaker;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.context.annotation.Import;
//import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;

import com.akhi.app.config.SwaggerConfig;

@SpringBootApplication
@EnableEurekaClient
//@EnableFeignClients("com.akhi.app")
@EnableResourceServer
@EnableGlobalMethodSecurity(prePostEnabled = true)
@EntityScan(basePackages = "com.akhi.app.model.ingredients")
@EnableCircuitBreaker
@Import(SwaggerConfig.class)
public class BurgerIngredientsServerApplication {

	public static void main(String[] args) {
		System.setProperty("spring.profiles.default", "cloud");
		SpringApplication.run(BurgerIngredientsServerApplication.class, args);
	}

}
