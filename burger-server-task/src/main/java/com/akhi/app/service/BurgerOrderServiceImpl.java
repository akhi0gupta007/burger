package com.akhi.app.service;

import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;

@Service
public class BurgerOrderServiceImpl implements BurgerOrderService {


	@Override
	public boolean validatePin(String pinCode) {
		boolean result= false;
		if(pinCode.length() <= 5 || pinCode.length() > 6 || isInvalidNumber(pinCode))
			result = false;
		else
			result = true;
		
		return result;		
	}

	private boolean isInvalidNumber(String pinCode) {
		try {
			Integer.parseInt(pinCode);
		}catch(NumberFormatException ex) {
			return true;
		}
		return false;
	}

}
