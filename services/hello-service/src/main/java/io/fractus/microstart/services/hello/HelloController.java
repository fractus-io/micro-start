/**
 * 
 * Copyright (c) 2018 Fractus IT d.o.o. <http://fractus.io>
 * 
 */
package io.fractus.microstart.services.hello;


import org.springframework.web.bind.annotation.RestController;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.RequestMapping;

@RefreshScope
@RestController
public class HelloController {
    
    @Value("${message:Hello default}")
    private String message;
    
    
    @RequestMapping("/hello")
    public String index() {
        return this.message;
    }
    
}
