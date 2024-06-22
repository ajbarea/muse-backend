package com.musemaker.muse_backend.service;

import java.util.List;

import com.musemaker.muse_backend.model.User;

public interface UserService {
    List<User> findAllUsers();

    User findUserById(Long id);

    User saveUser(User user);

    void deleteUser(Long id);
}