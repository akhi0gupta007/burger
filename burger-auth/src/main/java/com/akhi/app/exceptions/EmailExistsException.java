package com.akhi.app.exceptions;

public class EmailExistsException extends Exception {

	private static final long serialVersionUID = 1L;
	
	
	public EmailExistsException(String email){
		super("Email Already exists :"+email);
	}
}
