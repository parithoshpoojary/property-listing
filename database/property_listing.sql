-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2021 at 03:58 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

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
(9, 'Aradhana Apmts', 'Testing rd', NULL, 110089),
(10, 'Eleventh Cross Road', 'Andheri', NULL, 400060),
(11, 'Senapati  Banpati Marg', 'Juhu', NULL, 400070),
(12, 'Pushpvihar', 'Middle Circle', NULL, 468050),
(13, 'Cyber Hub', 'Radial Road D-Block', NULL, 407050),
(14, 'Lodhi Colony', 'Diplomatic Enclave', NULL, 400875),
(15, 'Janpath', 'ChanakyaPuri', NULL, 210880),
(16, 'Bell Circle', 'MG Road', NULL, 110690),
(17, '12th C Cross', 'Indira Nagar', NULL, 180040),
(18, 'Trinity Code Road', 'Lavelle Road', NULL, 110389),
(19, 'Brigade Grounds', 'JP Nagar', NULL, 190089),
(20, 'Haveli6', 'ManSing Road', NULL, 400050),
(21, 'Toll Gate', 'Vijay Nagar', NULL, 150089),
(22, 'Gachibowli', 'Jublie Hills', NULL, 408050),
(23, '15th Cross C Road', 'Banjara Hills', NULL, 894050),
(24, 'Bejumput Complex', 'Bashirbagh', NULL, 451075),
(25, 'Freemason Road', 'Sainikpuri', NULL, 910880),
(26, '16th Road', 'Hitech City', NULL, 182090),
(27, 'Second House ', 'West Bengal', NULL, 426750),
(28, 'Sardar Shankar Rd  ', 'West Bengal', NULL, 398050),
(29, 'Lake Market  ', 'Barasat', NULL, 200050),
(30, 'Kalighat', 'Rajarhat-Gopalpur', NULL, 912075),
(31, 'CasaGrand Athens', 'Mogappair', NULL, 738050),
(32, 'Casagrand Monte Carlo', 'Mount Road', NULL, 845900),
(33, 'Old Madras Road ', 'KP Puram', NULL, 415450),
(34, 'Hosabasavanapura ', 'Bhattarahalli', NULL, 287075),
(35, 'Timeless British Architecture', 'Krishnarajapura', NULL, 862580),
(36, ' Matra Chaya Building ', 'Khanpur', NULL, 401234),
(37, ' Paldi Rd  ', 'Paldi', NULL, 837610),
(38, ' 11 A, Hindusthan Road ', 'Kalyani', NULL, 743280),
(39, 'Shrusti Arcade', 'Chandkheda', NULL, 789340),
(40, 'Gf 1 Saffron Complex', 'Bopal', NULL, 425075),
(41, '11 A, Hindusthan Road', 'Kalyani', NULL, 197540),
(42, 'Mundhwa - Kharadi Rd', 'Mundhwa', NULL, 187467),
(43, 'Laxmi Society ', 'Shivajinagar', NULL, 163838),
(44, 'Shivajinagar', 'Ganeshwadi', NULL, 867889),
(45, 'Fatima Nagar', 'Mundhwa', NULL, 627267),
(46, ' Hyatt Pune  ', 'Kalyani Nagar', NULL, 401673),
(47, ' Valentine Multiplex ', 'New Magdalla', NULL, 247610),
(48, 'Golden Square ', 'Athwa', NULL, 989340),
(49, 'Mangal Deep Complex ', 'Majura Gate', NULL, 425065),
(50, 'Hazira - Adajan Rd ', 'Adajan Gam', NULL, 197548),
(51, 'Madhav Complex ', ' Honey Park Rd', NULL, 187462),
(52, 'Ashram Marg ', 'Jawahar Circle', NULL, 163833),
(53, ' Vaishali Marg Blocks', 'Lohiya Colony', NULL, 667889),
(54, 'Jacob Rd ', 'Civil Lines', NULL, 427267),
(55, 'Bhawani Singh Rd   ', ' Rambagh', NULL, 367467),
(56, 'Sandal Street', 'Sector 135 ', NULL, 163858),
(57, ' Sarfabad ', 'Sector 73', NULL, 967889),
(58, 'Captain Vijyant Thapar Marg', 'Sector 16', NULL, 127267),
(59, ' Wave City Center', 'Sector 32 ', NULL, 164638),
(60, ' Labor Chowck ', 'Sector 110', NULL, 867879),
(61, 'Courtyard by Marriott Gurugram', 'Sushant Lok Phase I', NULL, 622367),
(62, ' 7, Rao Mohar Singh Marg    ', 'Pratap Nagar', NULL, 867869),
(63, 'The Leela Ambience ', 'Ambience Island', NULL, 623267),
(64, 'HUDA Market Rd', 'Sector 10A', NULL, 627287),
(65, 'The Oberois Era   ', 'Sector 17A  ', NULL, 267889),
(66, 'Banni Square', 'Sector 50', 'NULL', 678368);

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
(1, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/photoBuilding.png', NULL, 1),
(2, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/wishlistbuilding1.png', NULL, 2),
(3, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/BuyHouses.png', NULL, 3),
(4, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/wishlistbuilding2.png', NULL, 4),
(5, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/RentHouse.png', NULL, 5),
(6, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/photoBuilding.png', NULL, 6),
(7, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/wishlistbuilding1.png', NULL, 10),
(8, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/wishlistbuilding2.png', NULL, 9),
(9, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/BuyHouses.png', NULL, 8),
(10, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/RentHouse.png', NULL, 7),
(11, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/photoBuilding.png', NULL, 12),
(12, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/wishlistbuilding1.png', NULL, 13),
(13, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/BuyHouses.png', NULL, 14),
(14, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/wishlistbuilding2.png', NULL, 11),
(15, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/RentHouse.png', NULL, 15),
(16, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/wishlistbuilding1.png', NULL, 18),
(17, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/BuyHouses.png', NULL, 20),
(18, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/wishlistbuilding2.png', NULL, 19),
(19, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/RentHouse.png', NULL, 16),
(20, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/photoBuilding.png', NULL, 17),
(21, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/photoBuilding.png', NULL, 22),
(22, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/wishlistbuilding1.png', NULL, 23),
(23, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/BuyHouses.png', NULL, 24),
(24, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/wishlistbuilding2.png', NULL, 21),
(25, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/RentHouse.png', NULL, 25),
(26, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/photoBuilding.png', NULL, 27),
(27, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/wishlistbuilding1.png', NULL, 26),
(28, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/BuyHouses.png', NULL, 28),
(29, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/wishlistbuilding2.png', NULL, 30),
(30, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/RentHouse.png', NULL, 29),
(31, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/photoBuilding.png', NULL, 33),
(32, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/wishlistbuilding1.png', NULL, 32),
(33, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/BuyHouses.png', NULL, 31),
(34, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/wishlistbuilding2.png', NULL, 35),
(35, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/RentHouse.png', NULL, 34),
(36, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/photoBuilding.png', NULL, 38),
(37, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/wishlistbuilding1.png', NULL, 36),
(38, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/BuyHouses.png', NULL, 39),
(39, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/wishlistbuilding2.png', NULL, 40),
(40, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/RentHouse.png', NULL, 37),
(41, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/photoBuilding.png', NULL, 44),
(42, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/wishlistbuilding1.png', NULL, 41),
(43, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/BuyHouses.png', NULL, 43),
(44, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/wishlistbuilding2.png', NULL, 42),
(45, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/RentHouse.png', NULL, 45),
(46, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/photoBuilding.png', NULL, 49),
(47, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/wishlistbuilding1.png', NULL, 50),
(48, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/BuyHouses.png', NULL, 46),
(49, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/wishlistbuilding2.png', NULL, 47),
(50, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/RentHouse.png', NULL, 48),
(51, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/photoBuilding.png', NULL, 53),
(52, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/wishlistbuilding1.png', NULL, 54),
(53, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/BuyHouses.png', NULL, 51),
(54, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/wishlistbuilding2.png', NULL, 52),
(55, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/RentHouse.png', NULL, 55),
(56, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/photoBuilding.png', NULL, 60),
(57, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/wishlistbuilding1.png', NULL, 57),
(58, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/BuyHouses.png', NULL, 59),
(59, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/wishlistbuilding2.png', NULL, 58),
(60, 'https://raw.githubusercontent.com/parithoshpoojary/property-listing/resources/Resources%20-%20Main/Images/RentHouse.png', NULL, 56);

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
(1, 'Amuse Apmts', 2.5, 'Cr', NULL, NULL, 1, 1, 1, 'buy'),
(2, 'Aradhana', 25, 'k', NULL, NULL, 2, 1, 1, 'rent'),
(3, 'Lake View', 40, 'k', NULL, NULL, 3, 1, 2, 'rent'),
(4, 'A-1 Darbar', 1.2, 'Cr', NULL, NULL, 10, 1, 2, 'buy'),
(5, 'Global Hights', 75, 'k', NULL, NULL, 11, 1, 3, 'rent'),
(6, 'Amuse Apmts', 2.5, 'Cr', NULL, NULL, 12, 2, 1, 'buy'),
(7, 'Aradhana', 25, 'k', NULL, NULL, 14, 2, 3, 'rent'),
(8, 'Lake View', 40, 'k', NULL, NULL, 13, 2, 2, 'rent'),
(9, 'A-1 Darbar', 1.2, 'Cr', NULL, NULL, 15, 2, 1, 'buy'),
(10, 'Global Hights', 75, 'k', NULL, NULL, 20, 2, 3, 'rent'),
(11, 'Amuse Apmts', 2.5, 'Cr', NULL, NULL, 16, 3, 3, 'buy'),
(12, 'Aradhana', 25, 'k', NULL, NULL, 17, 3, 2, 'rent'),
(13, 'Lake View', 40, 'k', NULL, NULL, 18, 3, 1, 'rent'),
(14, 'A-1 Darbar', 1.2, 'Cr', NULL, NULL, 19, 3, 2, 'buy'),
(15, 'Global Hights', 75, 'k', NULL, NULL, 21, 3, 1, 'rent'),
(16, 'Amuse Apmts', 2.5, 'Cr', NULL, NULL, 26, 4, 2, 'buy'),
(17, 'Aradhana', 25, 'k', NULL, NULL, 22, 4, 1, 'rent'),
(18, 'Lake View', 40, 'k', NULL, NULL, 23, 4, 3, 'rent'),
(19, 'A-1 Darbar', 1.2, 'Cr', NULL, NULL, 24, 4, 3, 'buy'),
(20, 'Global Hights', 75, 'k', NULL, NULL, 25, 4, 1, 'rent'),
(21, 'Amuse Apmts', 2.5, 'Cr', NULL, NULL, 31, 5, 1, 'buy'),
(22, 'Aradhana', 25, 'k', NULL, NULL, 32, 5, 2, 'rent'),
(23, 'Lake View', 40, 'k', NULL, NULL, 33, 5, 3, 'rent'),
(24, 'A-1 Darbar', 1.2, 'Cr', NULL, NULL, 34, 5, 1, 'buy'),
(25, 'Global Hights', 75, 'k', NULL, NULL, 35, 5, 2, 'rent'),
(26, 'Amuse Apmts', 2.5, 'Cr', NULL, NULL, 27, 6, 3, 'buy'),
(27, 'Aradhana', 25, 'k', NULL, NULL, 28, 6, 3, 'rent'),
(28, 'Lake View', 40, 'k', NULL, NULL, 29, 6, 2, 'rent'),
(29, 'A-1 Darbar', 1.2, 'Cr', NULL, NULL, 30, 6, 1, 'buy'),
(30, 'Global Hights', 75, 'k', NULL, NULL, 36, 6, 2, 'rent'),
(31, 'Amuse Apmts', 2.5, 'Cr', NULL, NULL, 37, 7, 1, 'buy'),
(32, 'Aradhana', 25, 'k', NULL, NULL, 38, 7, 1, 'rent'),
(33, 'Lake View', 40, 'k', NULL, NULL, 39, 7, 2, 'rent'),
(34, 'A-1 Darbar', 1.2, 'Cr', NULL, NULL, 40, 7, 2, 'buy'),
(35, 'Global Hights', 75, 'k', NULL, NULL, 41, 7, 3, 'rent'),
(36, 'Amuse Apmts', 2.5, 'Cr', NULL, NULL, 42, 8, 3, 'buy'),
(37, 'Aradhana', 25, 'k', NULL, NULL, 43, 8, 3, 'rent'),
(38, 'Lake View', 40, 'k', NULL, NULL, 44, 8, 1, 'rent'),
(39, 'A-1 Darbar', 1.2, 'Cr', NULL, NULL, 45, 8, 2, 'buy'),
(40, 'Global Hights', 75, 'k', NULL, NULL, 46, 8, 2, 'rent'),
(41, 'Amuse Apmts', 2.5, 'Cr', NULL, NULL, 47, 9, 2, 'buy'),
(42, 'Aradhana', 25, 'k', NULL, NULL, 48, 9, 2, 'rent'),
(43, 'Lake View', 40, 'k', NULL, NULL, 49, 9, 1, 'rent'),
(44, 'A-1 Darbar', 1.2, 'Cr', NULL, NULL, 50, 9, 1, 'buy'),
(45, 'Global Hights', 75, 'k', NULL, NULL, 51, 9, 3, 'rent'),
(46, 'Amuse Apmts', 2.5, 'Cr', NULL, NULL, 52, 10, 3, 'buy'),
(47, 'Aradhana', 25, 'k', NULL, NULL, 53, 10, 2, 'rent'),
(48, 'Lake View', 40, 'k', NULL, NULL, 54, 10, 2, 'rent'),
(49, 'A-1 Darbar', 1.2, 'Cr', NULL, NULL, 55, 10, 1, 'buy'),
(50, 'Global Hights', 75, 'k', NULL, NULL, 56, 10, 1, 'rent'),
(51, 'Amuse Apmts', 2.5, 'Cr', NULL, NULL, 57, 11, 2, 'buy'),
(52, 'Aradhana', 25, 'k', NULL, NULL, 58, 11, 3, 'rent'),
(53, 'Lake View', 40, 'k', NULL, NULL, 59, 11, 3, 'rent'),
(54, 'A-1 Darbar', 1.2, 'Cr', NULL, NULL, 60, 11, 1, 'buy'),
(55, 'Global Hights', 75, 'k', NULL, NULL, 61, 11, 2, 'rent'),
(56, 'Amuse Apmts', 2.5, 'Cr', NULL, NULL, 62, 12, 2, 'buy'),
(57, 'Aradhana', 25, 'k', NULL, NULL, 63, 12, 2, 'rent'),
(58, 'Lake View', 40, 'k', NULL, NULL, 64, 12, 1, 'rent'),
(59, 'A-1 Darbar', 1.2, 'Cr', NULL, NULL, 65, 12, 3, 'buy'),
(60, 'Global Hights', 75, 'k', NULL, NULL, 66, 12, 3, 'rent');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_image_prop` (`property_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

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
  ADD CONSTRAINT `FKa14pem3vquh6umb7s5jmb81hh` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`),
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
