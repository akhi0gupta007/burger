package com.akhi.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.task.configuration.EnableTask;
import org.springframework.context.annotation.Bean;

import com.akhi.app.service.BurgerProcessTaskRunner;

@SpringBootApplication
@EnableTask
public class BurgerServerTaskApplication {
	
	@Bean
	BurgerProcessTaskRunner getBurgerProcessTaskRunner() {
		return new BurgerProcessTaskRunner();
	}
	
	public static void main(String[] args) {
		SpringApplication.run(BurgerServerTaskApplication.class, args);
	}

}
