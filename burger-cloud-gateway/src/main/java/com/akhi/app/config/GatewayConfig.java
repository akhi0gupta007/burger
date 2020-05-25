package com.akhi.app.config;

import org.springframework.cloud.gateway.route.RouteLocator;
import org.springframework.cloud.gateway.route.builder.RouteLocatorBuilder;
import org.springframework.cloud.netflix.hystrix.EnableHystrix;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.codec.ServerCodecConfigurer;


@Configuration
@EnableHystrix
public class GatewayConfig {
	
//	@Bean
//	public ServerCodecConfigurer serverCodecConfigurer() {
//	   return ServerCodecConfigurer.create();
//	}

    @Bean
    public RouteLocator myRoutes(RouteLocatorBuilder builder) {
        return builder.routes()

                .route(p -> p
                        .path("/ingredients")
                        .filters(f ->
                                f.addRequestHeader("x-rapidapi-host", "restcountries-v1.p.rapidapi.com")
                                      //  .addRequestHeader("x-rapidapi-key", "1cfbdceb89msh5ae0c25f8a27b7ap17353djsn03ed743b1d4f")
                                        .hystrix(config -> config.setName("ingredients-service")
                                                .setFallbackUri("forward:/fallBackUri"))
                        )
                        .uri("lb://BURGER-INGREDIENTS-SERVER")
                )
                .route(p -> p
                        .path("/orders")
                        .filters(f ->
                                f.addRequestHeader("x-rapidapi-host", "joke3.p.rapidapi.com")
                                        .addRequestHeader("x-rapidapi-key", "1cfbdceb89msh5ae0c25f8a27b7ap17353djsn03ed743b1d4f")
                                        .hystrix(config -> config.setName("order-service")
                                                .setFallbackUri("forward:/fallBackUri"))
                        )
                        .uri("lb://BURGER-INGREDIENTS-SERVER")
                )
                .route(p -> p
                        .path("/burger-price")
                        .filters(f ->
                                f.addRequestHeader("x-rapidapi-host", "joke3.p.rapidapi.com")
                                        .addRequestHeader("x-rapidapi-key", "1cfbdceb89msh5ae0c25f8a27b7ap17353djsn03ed743b1d4f")
                                        .hystrix(config -> config.setName("price-service")
                                                .setFallbackUri("forward:/fallBackUri"))
                        )
                        .uri("lb://BURGER-PRICING-SERVER")
                )
                .build();
    }
}