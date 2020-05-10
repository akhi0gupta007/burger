package com.akhi.app.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.akhi.app.model.BurgerUser;

@Repository
public interface BurgerUserDao extends JpaRepository<BurgerUser, Long>{
	
	List<BurgerUser> findByEmail(String email);
	List<BurgerUser> findByUsername(String username);
	
}
