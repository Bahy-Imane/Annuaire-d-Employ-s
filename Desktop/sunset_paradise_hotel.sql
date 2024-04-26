-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2024 at 01:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sunset_paradise_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `reservation_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL,
  `room_type` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `equipment` varchar(100) DEFAULT NULL,
  `availability` tinyint(1) NOT NULL DEFAULT 1,
  `room_pic` varchar(3000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `room_type`, `price`, `equipment`, `availability`, `room_pic`) VALUES
(1, 'Single Room', 100, 'TV, Wi-Fi, Mini Bar', 1, 'https://www.hotel-entraigues.com/wp-content/uploads/2024/02/boutique_hotel_entraigues_uzes_languedoc_roussillon_gard_occitaniechambre_double_confort_mansarde_1-scaled.jpg'),
(2, 'Double Room', 150, 'TV, Wi-Fi, Mini Bar', 1, 'https://www.hotel-entraigues.com/wp-content/uploads/2024/02/boutique_hotel_entraigues_uzes_languedoc_roussillon_gard_occitaniechambre_double_confort_mansarde_1-scaled.jpg'),
(3, 'Suite', 250, 'TV, Wi-Fi, Mini Bar, Jacuzzi', 0, 'https://www.hotel-entraigues.com/wp-content/uploads/2024/02/boutique_hotel_entraigues_uzes_languedoc_roussillon_gard_occitaniechambre_double_confort_mansarde_1-scaled.jpg'),
(4, 'Family Room', 200, 'TV, Wi-Fi, Mini Bar', 1, 'https://www.hotel-entraigues.com/wp-content/uploads/2024/02/boutique_hotel_entraigues_uzes_languedoc_roussillon_gard_occitaniechambre_double_confort_mansarde_1-scaled.jpg'),
(5, 'Executive Suite', 300, 'TV, Wi-Fi, Mini Bar, Jacuzzi, Sea View', 1, 'https://www.hotel-entraigues.com/wp-content/uploads/2024/02/boutique_hotel_entraigues_uzes_languedoc_roussillon_gard_occitaniechambre_double_confort_mansarde_1-scaled.jpg'),
(6, 'Presidential Suite', 500, 'TV, Wi-Fi, Mini Bar, Jacuzzi, Sea View, Private Pool', 0, 'https://www.hotel-entraigues.com/wp-content/uploads/2024/02/boutique_hotel_entraigues_uzes_languedoc_roussillon_gard_occitaniechambre_double_confort_mansarde_1-scaled.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
