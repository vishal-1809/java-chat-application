CREATE DATABASE chat;


USE chat;

CREATE TABLE `messages` (
  `msg_id` int(20) NOT NULL AUTO_INCREMENT,
  `incoming_msg_id` varchar(255) NOT NULL,
  `outgoing_msg_id` varchar(255) NOT NULL,
  `msg` varchar(1000) NOT NULL,
 PRIMARY KEY (`msg_id`)) AUTO_INCREMENT = 100;
 
 
 CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(200) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(400) NOT NULL,
  `status` varchar(255) NOT NULL,
 PRIMARY KEY (`user_id`)) AUTO_INCREMENT = 100;