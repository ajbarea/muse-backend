-- Drop tables if they exist
DROP TABLE IF EXISTS muse_message;
DROP TABLE IF EXISTS muse_friendship;
DROP TABLE IF EXISTS muse_like;
DROP TABLE IF EXISTS muse_comment;
DROP TABLE IF EXISTS muse_post;
DROP TABLE IF EXISTS muse_user;

-- Schema creation

create table muse_user (
    user_id serial primary key,
    username varchar(50) unique,
    email varchar(100) unique,
    password varchar(255),
    name varchar(100),
    bio text,
    profile_picture varchar(255)
);

create table muse_post (
    post_id serial primary key,
    user_id int,
    content text,
    media_type varchar(20),
    media_url varchar(255),
    timestamp timestamp,
    foreign key (user_id) references muse_user(user_id)
);

create table muse_comment (
    comment_id serial primary key,
    post_id int,
    user_id int,
    content text,
    timestamp timestamp,
    foreign key (post_id) references muse_post(post_id),
    foreign key (user_id) references muse_user(user_id)
);

create table muse_like (
    like_id serial primary key,
    post_id int,
    comment_id int,
    user_id int,
    timestamp timestamp,
    foreign key (post_id) references muse_post(post_id),
    foreign key (comment_id) references muse_comment(comment_id),
    foreign key (user_id) references muse_user(user_id)
);

create table muse_friendship (
    friendship_id serial primary key,
    user_id1 int,
    user_id2 int,
    timestamp timestamp,
    foreign key (user_id1) references muse_user(user_id),
    foreign key (user_id2) references muse_user(user_id)
);

create table muse_message (
    message_id serial primary key,
    sender_id int,
    receiver_id int,
    content text,
    timestamp timestamp,
    foreign key (sender_id) references muse_user(user_id),
    foreign key (receiver_id) references muse_user(user_id)
);
