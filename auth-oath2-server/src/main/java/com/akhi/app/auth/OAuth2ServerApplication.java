package com.akhi.app.auth;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;

@SpringBootApplication
@EnableAuthorizationServer
@EnableDiscoveryClient
public class OAuth2ServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(OAuth2ServerApplication.class, args);
	}

}
