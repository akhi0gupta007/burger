package com.akhi.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationCredentialsNotFoundException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.akhi.app.dao.BurgerUserDao;
import com.akhi.app.exceptions.EmailExistsException;
import com.akhi.app.jwt.JwtTokenUtil;
import com.akhi.app.jwt.JwtUserDetailsService;
import com.akhi.app.jwt.resource.JwtTokenRequest;
import com.akhi.app.jwt.resource.JwtTokenResponse;
import com.akhi.app.model.BurgerUser;

@Service
public class BurgerUserService {

	@Autowired
	private BurgerUserDao burgerUserDao;

	@Autowired
	private JwtUserDetailsService jwtUserDetailsService;

	@Autowired
	private JwtTokenUtil jwtTokenUtil;	

	@Autowired
	private AuthenticationService authService;

	public JwtTokenResponse signUpUser(JwtTokenRequest authenticationRequest) throws EmailExistsException {

		if (!CollectionUtils.isEmpty(burgerUserDao.findByEmail(authenticationRequest.getEmail()))) {
			throw new EmailExistsException(authenticationRequest.getEmail());
		}

		BurgerUser user = new BurgerUser(null, Utility.generateRandomId(), Utility.encode(authenticationRequest.getPassword()),
				authenticationRequest.getEmail());
		burgerUserDao.save(user);

		final UserDetails userDetails = jwtUserDetailsService.loadUserByUsername(authenticationRequest.getEmail());
		final JwtTokenResponse response = jwtTokenUtil.generateToken2(userDetails);
		response.setEmailId(user.getEmail());
		response.setRegistered(true);
		response.setLocalId(user.getUsername());

		return response;
	}

	public JwtTokenResponse signInUser(JwtTokenRequest authenticationRequest) {
		authService.authenticate(authenticationRequest.getEmail(), authenticationRequest.getPassword());
		final UserDetails userDetails = jwtUserDetailsService.loadUserByUsername(authenticationRequest.getEmail());
		
		final JwtTokenResponse response = jwtTokenUtil.generateToken2(userDetails);
		List<BurgerUser> users = burgerUserDao.findByEmail(authenticationRequest.getEmail());
		if(CollectionUtils.isEmpty(users)) {
			throw new AuthenticationCredentialsNotFoundException("User not found");
		}		
		BurgerUser user = users.get(0);
		response.setEmailId(user.getEmail());
		response.setRegistered(true);
		response.setLocalId(user.getUsername());

		return response;
	}
	
	

}
