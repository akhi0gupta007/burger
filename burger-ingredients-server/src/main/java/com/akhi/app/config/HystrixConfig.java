package com.akhi.app.config;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.netflix.hystrix.HystrixCommand;
import com.netflix.hystrix.HystrixCommandGroupKey;
import com.netflix.hystrix.HystrixCommandProperties;

@Configuration
@EnableConfigurationProperties
@ConfigurationProperties("circuit")
public class HystrixConfig {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	private String timeout;
	
	@Bean
	public HystrixCommand.Setter config(){
		logger.info("HysterixConfig timeout  value::::::::::::::::::::::::::{}",timeout);
		HystrixCommand.Setter config = HystrixCommand.Setter.withGroupKey(HystrixCommandGroupKey.Factory.asKey("burgerCloud"));
		HystrixCommandProperties.Setter commandProperties = HystrixCommandProperties.Setter();
		commandProperties.withExecutionTimeoutInMilliseconds(Integer.parseInt(timeout));
		config.andCommandPropertiesDefaults(commandProperties);
		return config;	
		}

	public String getTimeout() {
		return timeout;
	}

	public void setTimeout(String timeout) {
		this.timeout = timeout;
	}
	
	
}
