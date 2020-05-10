package com.akhi.app.service;

import java.util.UUID;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class Utility {
	public static String encode(String text) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		return encoder.encode(text);
	}
	
	public static String generateRandomId() {
        String uuid = UUID.randomUUID().toString();
        return uuid;
    }
}
