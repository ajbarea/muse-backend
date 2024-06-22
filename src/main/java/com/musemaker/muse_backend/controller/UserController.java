package com.musemaker.muse_backend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.musemaker.muse_backend.model.User;
import com.musemaker.muse_backend.repository.UserRepository;

@RestController
public class UserController {
    @Autowired
    private UserRepository userRepository;

    @GetMapping("/users")
    public ResponseEntity<Object> getUsers() {
        return ResponseEntity.ok(userRepository.findAll());
    }

    @GetMapping("/users/{id}")
    public ResponseEntity<Object> getUserById(Long id) {
        return ResponseEntity.ok(userRepository.findById(id).orElse(null));
    }

    @GetMapping("/users/{id}")
    public ResponseEntity<Object> deleteUser(Long id) {
        userRepository.deleteById(id);
        return ResponseEntity.ok().build();
    }

    @GetMapping("/users")
    public ResponseEntity<Object> saveUser(User user) {
        return ResponseEntity.ok(userRepository.save(user));
    }

}