-- Insert random data into muse_user
INSERT INTO muse_user (username, email, password, name, bio, profile_picture)
VALUES
('user1', 'user1@example.com', 'password1', 'User One', 'Bio for user one', 'profile1.jpg'),
('user2', 'user2@example.com', 'password2', 'User Two', 'Bio for user two', 'profile2.jpg'),
('user3', 'user3@example.com', 'password3', 'User Three', 'Bio for user three', 'profile3.jpg'),
('user4', 'user4@example.com', 'password4', 'User Four', 'Bio for user four', 'profile4.jpg'),
('user5', 'user5@example.com', 'password5', 'User Five', 'Bio for user five', 'profile5.jpg');

-- Insert random data into muse_post
INSERT INTO muse_post (user_id, content, media_type, media_url, timestamp)
VALUES
(1, 'Post content by user 1', 'image', 'media1.jpg', NOW() - INTERVAL '1 day'),
(2, 'Post content by user 2', 'video', 'media2.mp4', NOW() - INTERVAL '2 days'),
(3, 'Post content by user 3', 'image', 'media3.jpg', NOW() - INTERVAL '3 days'),
(4, 'Post content by user 4', 'image', 'media4.jpg', NOW() - INTERVAL '4 days'),
(5, 'Post content by user 5', 'video', 'media5.mp4', NOW() - INTERVAL '5 days');

-- Insert random data into muse_comment
INSERT INTO muse_comment (post_id, user_id, content, timestamp)
VALUES
(1, 2, 'Comment by user 2 on post 1', NOW() - INTERVAL '1 hour'),
(2, 3, 'Comment by user 3 on post 2', NOW() - INTERVAL '2 hours'),
(3, 4, 'Comment by user 4 on post 3', NOW() - INTERVAL '3 hours'),
(4, 5, 'Comment by user 5 on post 4', NOW() - INTERVAL '4 hours'),
(5, 1, 'Comment by user 1 on post 5', NOW() - INTERVAL '5 hours');

-- Insert random data into muse_like
INSERT INTO muse_like (post_id, comment_id, user_id, timestamp)
VALUES
(1, 1, 3, NOW() - INTERVAL '10 minutes'),
(2, 2, 4, NOW() - INTERVAL '20 minutes'),
(3, 3, 5, NOW() - INTERVAL '30 minutes'),
(4, 4, 1, NOW() - INTERVAL '40 minutes'),
(5, 5, 2, NOW() - INTERVAL '50 minutes');

-- Insert random data into muse_friendship
INSERT INTO muse_friendship (user_id1, user_id2, timestamp)
VALUES
(1, 2, NOW() - INTERVAL '1 day'),
(1, 3, NOW() - INTERVAL '2 days'),
(2, 3, NOW() - INTERVAL '3 days'),
(4, 5, NOW() - INTERVAL '4 days'),
(3, 5, NOW() - INTERVAL '5 days');

-- Insert random data into muse_message
INSERT INTO muse_message (sender_id, receiver_id, content, timestamp)
VALUES
(1, 2, 'Message from user 1 to user 2', NOW() - INTERVAL '1 hour'),
(2, 3, 'Message from user 2 to user 3', NOW() - INTERVAL '2 hours'),
(3, 4, 'Message from user 3 to user 4', NOW() - INTERVAL '3 hours'),
(4, 5, 'Message from user 4 to user 5', NOW() - INTERVAL '4 hours'),
(5, 1, 'Message from user 5 to user 1', NOW() - INTERVAL '5 hours');
