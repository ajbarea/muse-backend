package com.musemaker.muse_backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.musemaker.muse_backend.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
}
