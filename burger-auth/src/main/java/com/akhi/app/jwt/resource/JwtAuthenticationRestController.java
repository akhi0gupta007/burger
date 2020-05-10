package com.akhi.app.jwt.resource;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.akhi.app.exceptions.EmailExistsException;
import com.akhi.app.jwt.JwtTokenUtil;
import com.akhi.app.jwt.JwtUserDetails;
import com.akhi.app.service.AuthenticationService;
import com.akhi.app.service.BurgerUserService;

@RestController
@CrossOrigin(origins = "http://localhost:3000")
public class JwtAuthenticationRestController {

	@Value("${jwt.http.request.header}")
	private String tokenHeader;

	@Autowired
	private AuthenticationService authService;
	
	@Autowired
	private JwtTokenUtil jwtTokenUtil;

	@Autowired
	private UserDetailsService jwtInMemoryUserDetailsService;

	@Autowired
	private BurgerUserService burgerUserService;

	@RequestMapping(value = "${jwt.get.token.uri}", method = RequestMethod.POST)
	public ResponseEntity<?> createAuthenticationToken(@RequestBody JwtTokenRequest authenticationRequest)
			throws AuthenticationException {

		authService.authenticate(authenticationRequest.getUsername(), authenticationRequest.getPassword());

		final UserDetails userDetails = jwtInMemoryUserDetailsService
				.loadUserByUsername(authenticationRequest.getUsername());

		final String token = jwtTokenUtil.generateToken(userDetails);

		return ResponseEntity.ok(new JwtTokenResponse(token));
	}

	@RequestMapping(value = "${jwt.refresh.token.uri}", method = RequestMethod.GET)
	public ResponseEntity<?> refreshAndGetAuthenticationToken(HttpServletRequest request) {
		String authToken = request.getHeader(tokenHeader);
		final String token = authToken.substring(7);
		String username = jwtTokenUtil.getUsernameFromToken(token);
		JwtUserDetails user = (JwtUserDetails) jwtInMemoryUserDetailsService.loadUserByUsername(username);

		if (jwtTokenUtil.canTokenBeRefreshed(token)) {
			String refreshedToken = jwtTokenUtil.refreshToken(token);
			return ResponseEntity.ok(new JwtTokenResponse(refreshedToken));
		} else {
			return ResponseEntity.badRequest().body(null);
		}
	}

	@PostMapping("/signUp")
	public ResponseEntity<JwtTokenResponse> signUp(@RequestBody JwtTokenRequest tokenRequest)
			throws EmailExistsException {
		JwtTokenResponse sigupUser = burgerUserService.signUpUser(tokenRequest);		
		return new ResponseEntity<JwtTokenResponse>(sigupUser, HttpStatus.OK);
	}
	
	@PostMapping("/signIn")
	public ResponseEntity<JwtTokenResponse> signIn(@RequestBody JwtTokenRequest tokenRequest)
			throws EmailExistsException {
		JwtTokenResponse signInUser = burgerUserService.signInUser(tokenRequest);		
		return new ResponseEntity<JwtTokenResponse>(signInUser, HttpStatus.OK);
	}

	@GetMapping("/hello")
	public String hello() {
		return "Hello World";
	}

	@ExceptionHandler({ AuthenticationException.class })
	public ResponseEntity<String> handleAuthenticationException(AuthenticationException e) {
		return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(e.getMessage());
	}

	@ExceptionHandler({ EmailExistsException.class })
	public ResponseEntity<String> handleEmailExistsException(EmailExistsException e) {
		return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
	}
	
}
