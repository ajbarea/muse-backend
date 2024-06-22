package com.musemaker.muse_backend.config;

import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;
import com.musemaker.muse_backend.repository.UserRepository;
import com.musemaker.muse_backend.model.User;

@Component
public class DataSeeder implements ApplicationRunner {

    private final UserRepository userRepository;

    public DataSeeder(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public void run(ApplicationArguments args) throws Exception {
        // Create users with the provided data
        User user1 = new User();
        user1.setUsername("user1");
        user1.setEmail("user1@example.com");
        user1.setPassword("password1");
        user1.setName("User One");
        user1.setBio("Bio for user one");
        user1.setProfilePicture("profile1.jpg");

        User user2 = new User();
        user2.setUsername("user2");
        user2.setEmail("user2@example.com");
        user2.setPassword("password2");
        user2.setName("User Two");
        user2.setBio("Bio for user two");
        user2.setProfilePicture("profile2.jpg");

        User user3 = new User();
        user3.setUsername("user3");
        user3.setEmail("user3@example.com");
        user3.setPassword("password3");
        user3.setName("User Three");
        user3.setBio("Bio for user three");
        user3.setProfilePicture("profile3.jpg");

        User user4 = new User();
        user4.setUsername("user4");
        user4.setEmail("user4@example.com");
        user4.setPassword("password4");
        user4.setName("User Four");
        user4.setBio("Bio for user four");
        user4.setProfilePicture("profile4.jpg");

        User user5 = new User();
        user5.setUsername("user5");
        user5.setEmail("user5@example.com");
        user5.setPassword("password5");
        user5.setName("User Five");
        user5.setBio("Bio for user five");
        user5.setProfilePicture("profile5.jpg");

        // Save the users to the database
        userRepository.save(user1);
        userRepository.save(user2);
        userRepository.save(user3);
        userRepository.save(user4);
        userRepository.save(user5);

        // Add more entities as needed
    }
}
