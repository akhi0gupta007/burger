package com.akhi.app.config;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.netflix.hystrix.HystrixCommand;
import com.netflix.hystrix.HystrixCommandGroupKey;
import com.netflix.hystrix.HystrixCommandKey;
import com.netflix.hystrix.HystrixCommandProperties;
import com.netflix.hystrix.HystrixThreadPoolKey;
import com.netflix.hystrix.HystrixThreadPoolProperties;

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
	
	private static HystrixCommand.Setter setter1() {
	    HystrixCommandGroupKey groupkey = HystrixCommandGroupKey.Factory.asKey("rpc");
	    HystrixCommandKey commandkey = HystrixCommandKey.Factory.asKey("say");
	    HystrixThreadPoolKey threadpoolkey = HystrixThreadPoolKey.Factory.asKey("hello-1");
	    HystrixThreadPoolProperties.Setter threadproperties = HystrixThreadPoolProperties.Setter()//
	                    .withCoreSize(20).withKeepAliveTimeMinutes(5).withMaxQueueSize(1000).withQueueSizeRejectionThreshold(100);

	    HystrixCommandProperties.Setter commandproperty = HystrixCommandProperties.Setter()//
	                    .withExecutionIsolationStrategy(HystrixCommandProperties.ExecutionIsolationStrategy.THREAD)//
	                    .withFallbackEnabled(true).withFallbackIsolationSemaphoreMaxConcurrentRequests(100)//
	                    .withExecutionIsolationThreadInterruptOnFutureCancel(true)//
	                    .withExecutionIsolationThreadInterruptOnTimeout(true)//
	                    .withExecutionTimeoutEnabled(true).withExecutionTimeoutInMilliseconds(1000);
	    return HystrixCommand.Setter.withGroupKey(groupkey).andCommandKey(commandkey)//
	                    .andThreadPoolKey(threadpoolkey).andThreadPoolPropertiesDefaults(threadproperties)//
	                    .andCommandPropertiesDefaults(commandproperty);
	}
	
}
