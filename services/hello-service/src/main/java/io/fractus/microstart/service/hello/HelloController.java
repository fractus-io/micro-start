/**
 * 
 * Copyright (c) 2018 Fractus IT d.o.o. <http://fractus.io>
 * 
 */
package io.fractus.microstart.service.hello;


import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class HelloController {
    
    @RequestMapping("/hello")
    public String index() {
        return "Hello World\n";
    }
    
}
