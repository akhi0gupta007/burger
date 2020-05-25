package com.akhi.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.hystrix.dashboard.EnableHystrixDashboard;

@EnableHystrixDashboard
@SpringBootApplication
public class BurgerHysterixDashboardApplication {

	public static void main(String[] args) {
		SpringApplication.run(BurgerHysterixDashboardApplication.class, args);
	}

}
