package com.akhi.app.auth.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AccountStatusUserDetailsChecker;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.akhi.app.auth.model.AuthUserDetail;
import com.akhi.app.auth.model.User;
import com.akhi.app.auth.repository.UserDetailRepository;

@Service("userDetailsService")
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	UserDetailRepository userdetailRepository;

	@Override
	public UserDetails loadUserByUsername(String name) throws UsernameNotFoundException {

		Optional<User> optionalUser = userdetailRepository.findByUsername(name);
		User user = optionalUser.orElseThrow(() -> new UsernameNotFoundException(""));
		UserDetails userDetails = new AuthUserDetail(user);		
		new AccountStatusUserDetailsChecker().check(userDetails); //Check for expiry		
		
		return userDetails;
	}

}
