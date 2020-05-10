package com.akhi.app.jwt;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.akhi.app.model.BurgerUser;
import com.fasterxml.jackson.annotation.JsonIgnore;

public class JwtUserDetails implements UserDetails {

  private static final long serialVersionUID = 5155720064139820502L;


  private final BurgerUser burgerUser;
  private final Collection<? extends GrantedAuthority> authorities;

  public JwtUserDetails(Long id, String email, String password, String role) {
    this.burgerUser = new BurgerUser(id,null,password,email);
    List<SimpleGrantedAuthority> authorities = new ArrayList<SimpleGrantedAuthority>();
    authorities.add(new SimpleGrantedAuthority(role));
    this.authorities = authorities;
  }

  @JsonIgnore
  public Long getId() {
    return burgerUser.getId();
  }

  @Override
  public String getUsername() {
    return burgerUser.getEmail();
  }

  @JsonIgnore
  @Override
  public boolean isAccountNonExpired() {
    return true;
  }

  @JsonIgnore
  @Override
  public boolean isAccountNonLocked() {
    return true;
  }

  @JsonIgnore
  @Override
  public boolean isCredentialsNonExpired() {
    return true;
  }

  @JsonIgnore
  @Override
  public String getPassword() {
    return burgerUser.getPassword();
  }

  @Override
  public Collection<? extends GrantedAuthority> getAuthorities() {
    return authorities;
  }

  @Override
  public boolean isEnabled() {
    return true;
  }

public BurgerUser getBurgerUser() {
	return burgerUser;
}

}


