package com.akhi.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.netflix.hystrix.EnableHystrix;

@EnableEurekaClient
@SpringBootApplication
public class BurgerCloudGatewayApplication {

	public static void main(String[] args) {
		SpringApplication.run(BurgerCloudGatewayApplication.class, args);
	}

}
