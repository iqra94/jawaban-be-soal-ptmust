-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 20, 2024 at 07:19 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar_spring_restful_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` varchar(255) NOT NULL,
  `booking_date` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `office_name` varchar(255) DEFAULT NULL,
  `participants` int(11) NOT NULL,
  `room_name` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `booking_date`, `end_time`, `office_name`, `participants`, `room_name`, `start_time`) VALUES
('1', '2024-01-03 07:25:52', '2024-01-04 16:00:00', 'UID JAYA', 62, 'Ruang Borobudur', '2024-01-04 09:00:00'),
('10', '2024-01-15 09:25:52', '2024-01-17 11:00:00', 'UID JAYA', 40, 'Ruang Borobudur', '2024-01-17 08:00:00'),
('11', '2024-01-02 08:30:52', '2024-01-05 11:00:00', 'UID JATIM', 23, 'Ruang Sudirman', '2024-01-05 08:00:00'),
('12', '2024-01-03 09:30:52', '2024-01-05 11:00:00', 'UID JATIM', 30, 'Ruang Fatmawati', '2024-01-05 08:00:00'),
('13', '2024-01-11 09:30:52', '2024-01-13 16:00:00', 'UID JATIM', 25, 'Ruang Fatmawati', '2024-01-13 09:00:00'),
('14', '2024-01-15 09:30:52', '2024-01-18 16:00:00', 'UID JATIM', 23, 'Ruang Sudirman', '2024-01-18 09:00:00'),
('15', '2024-01-04 09:30:52', '2024-01-07 16:00:00', 'UID JABAR', 23, 'Ruang Galunggung', '2024-01-07 09:00:00'),
('150', '2024-01-04 09:30:52', '2024-01-07 16:00:00', 'UID JABAR', 23, 'Ruang Galunggung', '2024-01-07 09:00:00'),
('2', '2024-01-03 08:25:52', '2024-01-04 14:00:00', 'UID JAYA', 42, 'Ruang Prambanan', '2024-01-04 09:00:00'),
('3', '2024-01-03 08:25:52', '2024-01-04 11:00:00', 'UID JAYA', 15, 'Ruang Mendhut', '2024-01-04 09:00:00'),
('4', '2024-01-03 08:25:52', '2024-01-04 16:00:00', 'UID JAYA', 27, 'Ruang Mendhut', '2024-01-04 13:00:00'),
('5', '2024-01-06 08:25:52', '2024-01-08 16:00:00', 'UID JABAR', 27, 'Ruang Rinjani', '2024-01-08 13:00:00'),
('6', '2024-01-05 08:25:52', '2024-01-07 11:00:00', 'UID BALI', 27, 'Ruang Ganesha', '2024-01-07 09:00:00'),
('7', '2024-01-08 08:25:52', '2024-01-10 16:00:00', 'UID JAYA', 30, 'Ruang Prambanan', '2024-01-10 09:00:00'),
('8', '2024-01-01 08:00:52', '2024-01-03 14:00:00', 'UID JATENG & DIY', 35, 'Ruang Arjuna', '2024-01-03 09:00:00'),
('9', '2024-01-05 09:25:52', '2024-01-06 16:00:00', 'UID JAYA', 40, 'Ruang Borobudur', '2024-01-06 14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `consumptions`
--

CREATE TABLE `consumptions` (
  `id` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `max_price` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `booking_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consumptions`
--

INSERT INTO `consumptions` (`id`, `created_at`, `max_price`, `name`, `booking_id`) VALUES
('0a4f6304-488f-4fa9-ad20-c9df9d5d68f0', NULL, 0, 'Snack Sore', '14'),
('113c99c3-5d44-4ded-95d2-b758b5f961b7', NULL, 0, 'Snack Siang', '14'),
('17e4034c-a615-49f5-862e-227ad3fea026', NULL, 0, 'Snack Siang', '150'),
('1b81d79d-b723-4475-9425-72d93151c171', NULL, 0, 'Snack Siang', '7'),
('203c77b4-e9bc-4268-8785-2ed6df32c0bf', NULL, 0, 'Makan Siang', NULL),
('224d2658-4203-43aa-9cb1-94bc89a85e6b', NULL, 0, 'Snack Siang', '13'),
('2b90a610-4a30-4610-97dd-76c71ea3b81a', NULL, 0, 'Makan Siang', '1'),
('2dfa53b5-d7dc-40ef-8c3b-51c48155e901', NULL, 0, 'Snack Siang', '10'),
('3624a475-2190-4f55-a8c6-94a07c989fcc', NULL, 0, 'Snack Siang', '15'),
('3adc0429-3f58-426d-9776-78d73b5d98b8', NULL, 0, 'Snack Sore', '1'),
('40ad0704-e3ec-4ca1-b107-81cde33da238', NULL, 0, 'Makan Siang', '15'),
('48eebd1f-f30c-4325-b0ce-0c9cf6aec19d', NULL, 0, 'Makan Siang', '4'),
('4b5fb0c9-6dd0-4aa4-a0a9-2edf1651a083', NULL, 0, 'Snack Sore', '5'),
('4fc1c165-ea35-408e-8c70-34a927c12c69', NULL, 0, 'Snack Siang', '6'),
('547b93ba-fb80-4dce-a9de-527364b6957a', NULL, 0, 'Makan Siang', '5'),
('5d5e3563-071c-46ba-a6ec-6d5822bba442', NULL, 0, 'Makan Siang', '2'),
('5da1eb73-15c9-41a4-b38d-a1fa6818dce2', NULL, 0, 'Snack Siang', '12'),
('64e27e86-3f4c-4847-90e8-0f855a1c60b4', NULL, 0, 'Snack Sore', '9'),
('6688c7a2-4003-47d7-a272-6f4018e79d73', NULL, 0, 'Snack Siang', NULL),
('70f130b1-3491-41c1-a303-0e90def33a8c', NULL, 0, 'Makan Siang', '8'),
('802fae38-5ed1-4fa7-87be-b40076a76b23', NULL, 0, 'Snack Siang', NULL),
('98ed3d4a-8377-4bb7-a311-4f37174db96b', NULL, 0, 'Snack Sore', '15'),
('9d29990c-9fac-4adf-a9e6-292b724abdd1', NULL, 0, 'Snack Siang', NULL),
('9fc3f7e1-508b-4682-af56-8e84f46314dc', NULL, 0, 'Snack Sore', NULL),
('9fdc6477-85b7-4da2-9e03-d72e65eb748f', NULL, 0, 'Makan Siang', '14'),
('a12959a6-6464-4699-8e1a-52e27bb31eef', NULL, 0, 'Snack Siang', '2'),
('a6b663a9-cacc-48cb-a4cc-707007714da4', NULL, 0, 'Makan Siang', '7'),
('b4e2f027-efc5-447c-b88c-a7b2716c1e94', NULL, 0, 'Snack Sore', '13'),
('b6247d89-61e6-49eb-afef-e64463bf3d31', NULL, 0, 'Snack Sore', NULL),
('b76bac40-6ee9-4f00-a699-e5c38c287c58', NULL, 0, 'Snack Sore', '150'),
('b76dce77-6a37-4bdc-8e84-6ec1c16d4a63', NULL, 0, 'Snack Siang', '11'),
('bfd6226f-22a5-4207-855e-01b595050be0', NULL, 0, 'Snack Siang', '3'),
('c963c459-6dcc-44d3-aa9f-a37201b937f9', NULL, 0, 'Makan Siang', '150'),
('daf5a774-1e61-4e04-8eb3-af342b414ba0', NULL, 0, 'Snack Siang', '8'),
('dd607d12-f873-4f85-81d4-23b777ba4089', NULL, 0, 'Makan Siang', '13'),
('e04a97b8-b107-4df1-85c4-6a80320a5f1c', NULL, 0, 'Snack Sore', '4'),
('e2193c64-1457-489c-9406-ee7fa4aa0729', NULL, 0, 'Snack Sore', '7'),
('e6276b41-7eb4-4872-b444-c471873c8145', NULL, 0, 'Snack Siang', '1'),
('fb0b5fb2-8b33-48ba-9468-0d18f4d0211e', NULL, 0, 'Makan Siang', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consumptions`
--
ALTER TABLE `consumptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9hascdhdgqlb1tgv6dnb78fi9` (`booking_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `consumptions`
--
ALTER TABLE `consumptions`
  ADD CONSTRAINT `FK9hascdhdgqlb1tgv6dnb78fi9` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
