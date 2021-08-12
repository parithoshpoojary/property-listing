CREATE TABLE `users` (
  `user_id` int PRIMARY KEY AUTO_INCREMENT,
  `first_name` varchar(255),
  `last_name` varchar(255),
  `username` varchar(255) UNIQUE,
  `password` longtext,
  `created_at` timestamp
);

CREATE TABLE `admin` (
  `admin_id` int PRIMARY KEY AUTO_INCREMENT,
  `first_name` varchar(255),
  `last_name` varchar(255),
  `username` varchar(255),
  `password` longtext,
  `created_at` timestamp
);

CREATE TABLE `review` (
  `id` int PRIMARY KEY,
  `stars` tinyint,
  `review_body` longblob,
  `user_id` int NOT NULL,
  `property_id` int
);

CREATE TABLE `properties` (
  `property_id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `description` longtext,
  `images` mediumblob,
  `rating` int(10),
  `address_id` int(10) NOT NULL,
  `location_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL
);

CREATE TABLE `categories` (
  `category_id` int PRIMARY KEY,
  `name` varchar(255),
  `description` longtext
);

CREATE TABLE `locations` (
  `location_id` int PRIMARY KEY,
  `city` varchar(255),
  `state` varchar(255),
  `country` varchar(255)
);

CREATE TABLE `address` (
  `address_id` int PRIMARY KEY,
  `house` varchar(100),
  `street` varchar(100),
  `area` varchar(255),
  `landmark` varchar(255),
  `pincode` int(15)
);

ALTER TABLE `review` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `review` ADD FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`);

ALTER TABLE `properties` ADD FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`);

ALTER TABLE `properties` ADD FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`);

ALTER TABLE `properties` ADD FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
