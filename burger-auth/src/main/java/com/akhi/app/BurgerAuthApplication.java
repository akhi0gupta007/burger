package com.akhi.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@SpringBootApplication
@EnableJpaAuditing
public class BurgerAuthApplication {

	public static void main(String[] args) {
		SpringApplication.run(BurgerAuthApplication.class, args);
	}

}
