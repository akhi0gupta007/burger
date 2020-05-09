package com.akhi.app.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.akhi.app.jwt.resource.JwtTokenRequest;
import com.akhi.app.jwt.resource.JwtTokenResponse;

@Service
public class TokenService {

	Map<String,JwtTokenResponse> users = new HashMap<>();
	
	public JwtTokenResponse sigupUser(JwtTokenRequest request) {
		
		JwtTokenResponse JwtTokenResponse = users.get(request.getEmail());
		
		if(null == JwtTokenResponse) {
			JwtTokenResponse = new JwtTokenResponse("");
			JwtTokenResponse.setEmailId(request.getEmail());
			JwtTokenResponse.setExpiresIn(3600l);
			users.put(request.getEmail(),JwtTokenResponse);
		}		
		
		return JwtTokenResponse;
	}
}
