/**
 * 
 * Copyright (c) 2018 Fractus IT d.o.o. <http://fractus.io>
 * 
 */

package io.fractus.microstart.services.hello;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@Configuration
@EnableAutoConfiguration
@ComponentScan
@EnableEurekaClient
public class Application {
    
    public static void main(String[] args) {
        ApplicationContext ctx = SpringApplication.run(Application.class, args);
        
    }

}
