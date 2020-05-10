package com.akhi.app.jwt;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.akhi.app.dao.BurgerUserDao;
import com.akhi.app.model.BurgerUser;

@Service
public class JwtUserDetailsService implements UserDetailsService {

	static List<JwtUserDetails> inMemoryUserList = new ArrayList<>();

	@Autowired
	private BurgerUserDao burgerUserDao;

	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		List<BurgerUser> byEmail = burgerUserDao.findByEmail(email);

		if (CollectionUtils.isEmpty(byEmail)) {
			throw new UsernameNotFoundException(String.format("USER_NOT_FOUND '%s'.", email));
		}
		BurgerUser burgerUser = byEmail.get(0);
		JwtUserDetails userDetails = new JwtUserDetails(burgerUser.getId(), burgerUser.getEmail(),
				burgerUser.getPassword(), "ROLE_USER_2");
		return userDetails;
	}

}
