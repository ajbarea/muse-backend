package com.musemaker.muse_backend.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class TestController {

    @GetMapping("/test-endpoint")
    public String getYourEndpoint() {
        return "Hello, World! This is a test endpoint!";
    }
}