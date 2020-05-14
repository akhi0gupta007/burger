package com.akhi.app.auth.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.akhi.app.auth.model.User;

public interface UserDetailRepository extends JpaRepository<User, Integer> {

	Optional<User> findByUsername(String name);
}
