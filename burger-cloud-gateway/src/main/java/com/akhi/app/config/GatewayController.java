package com.akhi.app.config;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class GatewayController {
	
//	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	
	@GetMapping("/fallBackUri")
	public String getIngredients(){
		 return "Gateway: Error in request Processing";
	}
}
