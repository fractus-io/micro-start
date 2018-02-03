/**
 * 
 * Copyright (c) 2017 Fractus IT d.o.o. <http://fractus.io>
 * 
 */

package io.fractus.microstart.service.hello;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@EnableAutoConfiguration
@ComponentScan
public class Application {
    
    public static void main(String[] args) {
        ApplicationContext ctx = SpringApplication.run(Application.class, args);
        
    }

}
