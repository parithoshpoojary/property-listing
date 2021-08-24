-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2021 at 07:18 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `property_listing`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `line_1` varchar(255) DEFAULT NULL,
  `line_2` varchar(255) DEFAULT NULL,
  `landmark` varchar(50) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `line_1`, `line_2`, `landmark`, `pincode`) VALUES
(1, '15th Road', 'Bandra (W)', NULL, 400050),
(2, 'Turner Road', 'Bandra (W)', NULL, 400050),
(3, 'G. Nanak Rd', 'Bandra (W)', NULL, 400050),
(4, 'S.V Road', 'Jogeshwari (W)', NULL, 400075),
(5, 'Freemason Road', 'Okhla', NULL, 110880),
(6, '11th Road', 'Neezamuddin Station', NULL, 110090),
(7, 'Shalimar Baugh', '', NULL, 110040),
(8, 'Nelosn Mandela Rd', '', NULL, 110089),
(9, 'Aradhana Apmts', 'Testing rd', NULL, 110089);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, '1BHK', NULL),
(2, '2BHK', NULL),
(3, '3BHK', NULL),
(4, 'Villa', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(11);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `imageurl` longtext DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `imageurl`, `size`, `property_id`) VALUES
(1, '../../assets/BuyHouses.png', NULL, 1),
(2, '../../assets/RentHouse.png', NULL, 2),
(3, '', NULL, 3),
(4, '', NULL, 4),
(5, '', NULL, 5),
(6, '', NULL, 6),
(7, '', NULL, 7),
(8, '', NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `city`, `state`) VALUES
(1, 'Mumbai', 'Maharashtra'),
(2, 'Delhi', 'Delhi'),
(3, 'Bangalore', 'Karnataka'),
(4, 'Hyderabad', 'Telangana'),
(5, 'Chennai', 'Tamil Nadu'),
(6, 'Kolkata', 'West Bengal'),
(7, 'Ahmedabad', 'Gujrat'),
(8, 'Pune', 'Maharashtra'),
(9, 'Surat', 'Gujrat'),
(10, 'Jaipur', 'Rajasthan'),
(11, 'Noida', 'UP'),
(12, 'Gurgaon', 'Haryana');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `p_den` enum('k','Cr','Lakhs') NOT NULL,
  `description` text DEFAULT NULL,
  `avg_rating` int(11) DEFAULT NULL,
  `address_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `list_for` enum('buy','rent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `price`, `p_den`, `description`, `avg_rating`, `address_id`, `location_id`, `category_id`, `list_for`) VALUES
(1, 'Amuse Apmts', 2.5, 'Cr', NULL, NULL, 1, 1, 2, 'buy'),
(2, 'Aradhana', 25, 'k', NULL, NULL, 2, 1, 1, 'rent'),
(3, 'Lake View', 40, 'k', NULL, NULL, 3, 1, 2, 'rent'),
(4, 'A-1 Darbar', 1.2, 'Cr', NULL, NULL, 4, 1, 2, 'buy'),
(5, 'Global Hights', 75, 'k', NULL, NULL, 5, 2, 2, 'rent'),
(6, 'Nelson Aptms', 30, 'k', NULL, NULL, 6, 2, 2, 'rent'),
(7, 'Golden Oak', 3, 'Cr', NULL, NULL, 7, 2, 3, 'buy'),
(8, 'Aradhana Apmts', 20, 'k', NULL, NULL, 8, 2, 1, 'rent');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `website_review` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `website_review`) VALUES
(1, 'arif', 'arif12', 'Mohammed', 'Arif', NULL),
(2, 'rithvik', 'rithvik123', 'Rithvik', 'B', 'Find Your Dream Home with India\'s No.1 Property Site. Search Now! Choose Your Residential Property from 15 lac+ Property Options.'),
(3, 'tejal', 'tejal123', 'Tejal', 'Guttal', 'Find Your Dream Home with India\'s No.1 Property Site.'),
(4, 'vivek', 'vivek123', 'Vivek', 'L', 'Find Your Dream Home with India\'s No.1 Property Site.'),
(5, 'kiran', 'kiran123', 'Kiran', '', 'Find Your Dream Home with India\'s No.1 Property Site. Search Now! Choose Your Residential Property from 15 lac+ Property Options on Magicbricks. Property Advice. Maximum Property Options. Price & Trends Info. In-Depth Locality Info.'),
(6, 'parithosh', 'parithosh123', 'Parithosh', 'Poojary', 'Find Your Dream Home with India\'s No.1 Property Site. Search Now! Choose Your Residential Property from 15 lac+ Property Options on Magicbricks. Property Advice. Maximum Property Options. Price & Trends Info. In-Depth Locality Info.'),
(7, 'test', 'test123', 'Test', 'One', NULL),
(8, 'johndoe', 'john123', 'John', 'Doe', NULL),
(10, 'janek', 'jane123', 'Jane', 'Kris', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_properties`
--

CREATE TABLE `users_properties` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `list_in` enum('booking','wishlist') NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `review` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_properties`
--

INSERT INTO `users_properties` (`id`, `user_id`, `property_id`, `list_in`, `rating`, `review`) VALUES
(1, 1, 1, 'booking', NULL, NULL),
(2, 1, 2, 'wishlist', NULL, NULL),
(3, 2, 1, 'wishlist', NULL, NULL),
(4, 3, 3, 'booking', NULL, NULL),
(5, 3, 2, 'booking', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `address_id` (`address_id`),
  ADD KEY `fk_property_location` (`location_id`),
  ADD KEY `fk_property_category` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users_properties`
--
ALTER TABLE `users_properties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`property_id`,`list_in`),
  ADD KEY `fk_booking_prop` (`property_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users_properties`
--
ALTER TABLE `users_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `fk_image_prop` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `fk_property_address` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_property_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_property_location` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_properties`
--
ALTER TABLE `users_properties`
  ADD CONSTRAINT `fk_booking_prop` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_booking_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
