package com.musemaker.muse_backend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.musemaker.muse_backend.repository.UserRepository;

@RestController
public class TestController {
    @Autowired
    private UserRepository userRepository;

    @GetMapping("/")
    public ResponseEntity<String> homePage() {
        return ResponseEntity.ok("Welcome! This is a test HomePage");
    }

    @GetMapping("/test")
    public ResponseEntity<String> testDatabaseConnection() {
        long count = userRepository.count();
        return ResponseEntity.ok("Number of records: " + count);
    }

}