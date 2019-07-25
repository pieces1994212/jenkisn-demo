package com.poodlecookie.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Kimi Xu
 */
@RestController
public class DemoController {

    @GetMapping("/hello")
    public String test(){
        return "hello docker jenkins!";
    }
}
