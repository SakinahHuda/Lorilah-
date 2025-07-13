-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2025 at 09:42 AM
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
-- Database: `lorilah`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'sakinah huda khazali', 'sakinahhuda4601@gmail.com', '$2y$10$0/1Keg30sPFFiaCkd87sMOrmHJXHy8rf63eMJEXyabpf9EaRPXhJ2', '2025-07-11 15:01:33'),
(2, 'Fatimah', 'Timah@gmail.com', '$2y$10$Pcq3poXjzrhpp/J63i.yI.af8CJ2Jdy0gTTAyjgxS6Aan4volSrP.', '2025-07-11 15:35:47'),
(3, 'Malia', 'lia@gmail.com', '$2y$10$a/i47Ul3qwJIAP51f0NH0OnD11sPZ1rHP19rWVIZRwikBcl.I99iG', '2025-07-12 18:07:56'),
(4, 'Siti Naemah', 'ema@gmail.com', '$2y$10$uBfcg/nRNyH6P4VG29pMuuXVkwVtZTGxGfKxxtlD5I3e7KPJ1ueQG', '2025-07-13 00:52:02'),
(5, 'Azman Bin Muhamad', 'azman@gmail.com', '$2y$10$m8VcOrsFQLcTe6LnTfSKtuvRcvw.3OWEfgevNLhgw5dvznm3pQP7O', '2025-07-13 05:47:55'),
(6, 'alya syamilah', 'alya@gmail.com', '$2y$10$qDMKIdx8WSG5bno25MHrT.7fOM4xBQxUKRYzKub/5Rh0Vpw02bSIi', '2025-07-13 07:20:30');

-- --------------------------------------------------------

--
-- Table structure for table `foodtrucks`
--

CREATE TABLE `foodtrucks` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `foodtype` varchar(100) NOT NULL,
  `owner` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foodtrucks`
--

INSERT INTO `foodtrucks` (`id`, `name`, `foodtype`, `owner`, `address`, `latitude`, `longitude`, `created_at`) VALUES
(1, 'ice cream', 'Ice cream selections', 'Encik Azman', 'Kuala Lumpur, Malaysia', 3.1319197, 101.6840589, '2025-07-11 14:57:56'),
(2, 'ice cream', 'Ice cream selections', 'Encik Azman', 'Kuala Lumpur, Malaysia', 3.1319197, 101.6840589, '2025-07-11 14:58:04'),
(3, 'burger truck (kl)', 'Burger Ayam, Burger Daging, Burger Benjo', 'Encik Bob', 'Jalan Raja, Dataran Merdeka, 50050 Kuala Lumpur, Malaysia', 3.1490605, 101.6936592, '2025-07-11 15:56:54'),
(4, 'roti john truck (kl)', 'Original Roti John, Cheese Roti John, Spicy Chicken Roti John', 'Siti Nurhaliza Mohamad Ali', 'Jalan Tuanku Abdul Rahman, Chow Kit, 50300 Kuala Lumpur', 3.161054, 101.6973946, '2025-07-11 15:59:39'),
(5, 'johor mee rebus truck', 'Classic Mee Rebus, Mee Rebus Telur, Mee Rebus Daging', 'Mohamad Faizal bin Johari', 'Taman Johor Jaya, 81100 Johor Bahru, Johor', 1.535573, 103.7978201, '2025-07-11 16:00:39'),
(6, 'negeri sembilan lemang truck', 'Lemang Daging, Lemang Ayam, Lemang Ikan Bakar', 'Hajah Aminah binti Salleh', 'Seremban City Centre, 70300 Seremban, Negeri Sembilan', 2.7294354, 101.9366606, '2025-07-11 16:02:10'),
(7, 'kedah laksa utara truck', 'Laksa Utara, Laksa Buyong, Laksa Telur Sarang', 'Norhayati binti Arifin', 'Taman Gurun, Kedah, Malaysia', 5.825072, 100.4760029, '2025-07-11 16:36:30'),
(8, 'terengganu keropok lekor truck', 'Keropok Lekor goreng, Keropok Lekor Kukus, Keropok Lekor Pedas', 'Nik Aziz bin Ahmad', 'Jalan Pantai, Kuala Terengganu, Malaysia', 5.3954357, 103.1063424, '2025-07-11 16:38:11'),
(9, 'Mango Truck', 'Harumanis Mango Shake, Harumanis Pudding, Harumani', 'Encik Harun Bin Ali', '45, Jalan Ular, 456789 Kepala Batas, Penang', 5.5143432, 100.4134284, '2025-07-12 06:42:06'),
(10, 'Coconut Shale Truck', 'Coconut Shake, Original Coconut, Milk Shake', 'Pn Azreen Bin Sulaiman', 'No 98 Jalan Taman Serai Wangi 09400 Padang Serai, Kedah, Malaysia', 5.515212, 100.5431641, '2025-07-12 06:54:23'),
(11, 'Soya Truck', 'Air Soya Hijau, Air Soya Original, Air Soya Gula Hitam', 'Encik Azra Ismail', 'Kelantan, Malaysia', 5.115146, 101.8891721, '2025-07-12 19:24:00'),
(12, 'Nasi Kukus Truck', 'Nasi Kukus Ayam, Nasi Kukus Daging, Nasi Kukus Pelangi', 'Encik Halim Bin Zaki', 'Pahang, Malaysia', 3.9743406, 102.4380581, '2025-07-12 19:27:26'),
(13, 'Sausage Truck', 'Sausage Lokching, Sausage Grilled', 'Maria Rivera', 'Near Taman Perwira, Temerloh, Pahang, Malaysia', 2.9395791, 101.4757997, '2025-07-13 02:00:56'),
(14, 'Kebab Truck', 'Kebab Ayam, Kebab Kambing', 'Kamilah', 'Near Jalan Kamisah, Kuantan, Pahang, Malaysia', 3.967114, 103.401272, '2025-07-13 02:13:10'),
(15, 'Jelly Truck', 'Dadih Original, Jelly Ball, Dadih Susu', 'Siti Jamilah', 'Near Jalan Bunga, Batu Pahat, Johor, Malaysia', 1.8996685, 103.2149557, '2025-07-13 02:25:08'),
(16, 'Bergedil Truck', 'Tauhu Bergedil, Tauhu Bergedil Pedas, Tauhu Bergedil Kicap', 'Encik Azmi Zakaria', 'No 98 Jalan Taman Serai Wangi 09100 Baling, Kedah, Malaysia', 5.515212, 100.5431641, '2025-07-13 02:39:22'),
(17, 'Ball\'s Truck', 'Jejari Ikan, Jejari Bola', 'Pn Salmiah Ahmad', 'No 76 Jalan Ekor Kucing, Kampung Selamat, Pulau Pinang, Malaysia', 5.5409007, 100.5230086, '2025-07-13 02:43:31'),
(18, 'Yogurt Truck', 'Yogurt Original, Yogurt Milk, Yogurt Chocolate', 'Muhammad sopi', 'Taman Bersatu, Nilai, Negeri Sembilan, Malaysia', 2.8213342, 101.7783951, '2025-07-13 03:53:01'),
(19, 'Nasi Kandar', 'Nasi Kandar Ayam Berempah, Nasi Kandar Kari Ikan, Nasi Kandar Kari Bendi', 'Tuan Mustafa Kamal', 'No 7, Lorong Kilang 3, Tupai, Taiping, Perak', 4.8420484, 100.7472464, '2025-07-13 07:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `report_form`
--

CREATE TABLE `report_form` (
  `id` int(11) NOT NULL,
  `foodtruck_name` varchar(100) NOT NULL,
  `foodtype` varchar(100) NOT NULL,
  `location_description` text NOT NULL,
  `state` varchar(100) NOT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `reported_by` varchar(100) NOT NULL,
  `reported_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report_form`
--

INSERT INTO `report_form` (`id`, `foodtruck_name`, `foodtype`, `location_description`, `state`, `latitude`, `longitude`, `reported_by`, `reported_at`) VALUES
(1, 'Nasi Goreng Truck', 'Nasi Goreng Kampung, Nasi Goreng Ayam', 'Near Taming Sari', 'Melaka, Malaysia', 37.4219983, -122.084, 'Muhammad Danial', '2025-07-11 23:55:34'),
(2, 'Bihun Truck', 'Bihun Sup, Bihun Singapore', 'Near Masjid Kristal', 'Putrajaya, Malaysia', 37.4219983, -122.084, 'Muhammad Danial', '2025-07-12 00:01:21'),
(3, 'Mee Truck', 'Mee Goreng, Mee basah', 'Near Masjid Tanah Merah', 'Kelantan, Malaysia', 37.4220936, -122.083922, 'safia', '2025-07-12 00:20:25'),
(4, 'Ramyun Truck', 'Ramyun Spicy, Ramyun Seafood', 'Near Jambatan Tanjung Dawai', 'Kedah, Malaysia', 37.4219983, -122.084, 'safia', '2025-07-12 00:27:12'),
(5, 'Oden Truck', 'Steamboat, Oden Ayam, Oden Ikan', 'Near family mart', 'Kedah, Malaysia', 37.4219983, -122.084, 'safia', '2025-07-12 00:33:11'),
(6, 'Kukus Truck', 'Roti Kukus, Nasi Kukus, Kambing Kukus', 'near Jalan Nilai', 'Negeri Sembilan, Malaysia', 37.4219983, -122.084, 'safia', '2025-07-12 00:41:20'),
(7, 'Bakar Truck', 'Ikan Bakar, Ayam Bakar', 'Near Jalan Minangkabau', 'Negeri Sembilan, Malaysia', 37.4219983, -122.084, 'safia', '2025-07-12 00:45:53'),
(8, 'Gepuk Truck', 'Ayam Gepuk, Kambing Gepuk', 'Near KTM arau', 'Perlis, Malaysia', 37.4219983, -122.084, 'safia', '2025-07-12 01:02:27'),
(9, 'Belinda Truck', 'Ayam Belida, Itik Belida', 'Near Jalan Guar Chempedak', 'Kedah, Malaysia', 37.4219983, -122.084, 'safia', '2025-07-12 01:25:10'),
(10, 'Kari Truck', 'Kari Ayam, Kari Telur, Kari Itik', 'Near Masjid Sultan Ahmad', 'Kedah, Malaysia', 37.4219983, -122.084, 'safia', '2025-07-12 01:37:43'),
(11, 'Subway Truck', 'Roti, Salad, Cookies', 'Near Paya Pahlawan', 'Pahang, Malaysia', 37.4219983, -122.084, 'safia', '2025-07-12 01:44:54'),
(12, 'Sala truck', 'Sala Fruit, Sala Juice', 'Near Jalan gelang patah', 'Johor, Malaysia', 37.4219983, -122.084, 'safia', '2025-07-12 01:55:05'),
(13, 'Lada Truck', 'Lada Ayam, Lada Itik', 'Near Masjid kota', 'Kelantan, Malaysia', 37.4219983, -122.084, 'safia', '2025-07-12 02:00:36'),
(14, 'Ice cream', 'Ice Cream selections', 'Near Masjid Negara', 'Kuala Lumpur, Malaysia', 37.4219983, -122.084, 'Muhammad Danial', '2025-07-12 06:24:59'),
(15, 'burger truck (kl)', 'Burger Ayam, Burger Daging, Burger Benjo', 'Near Dataran Merdeka', 'Jalan Raja, Dataran Merdeka, 50050 Kuala Lumpur, Malaysia', 37.4219983, -122.084, 'Muhammad Danial', '2025-07-12 06:28:56'),
(16, 'roti john truck (kl)', 'Original Roti John, Cheese Roti John, Spicy Chicken Roti John', 'Near Jalan Tuanku Abdul Rahman', 'Jalan Tuanku Abdul Rahman, Chow Kit, 50300 Kuala Lumpur', 37.4219983, -122.084, 'Alif Faisal', '2025-07-12 06:32:44'),
(17, 'johor mee rebus truck', 'Classic Mee Rebus, Mee Rebus Telur, Mee Rebus Daging', 'Near Taman Johor Jaya', 'Taman Johor Jaya, 81100 Johor Bahru, Johor', 37.4219983, -122.084, 'Alif Faisal', '2025-07-12 06:33:42'),
(18, 'negeri sembilan lemang truck', 'Lemang Daging, Lemang Ayam, Lemang Ikan Bakar', 'Near City Centre', 'Seremban City Centre, 70300 Seremban, Negeri Sembilan', 37.4219983, -122.084, 'Alif Faisal', '2025-07-12 06:34:50'),
(19, 'kedah laksa utara truck', 'Laksa Utara, Laksa Buyong, Laksa Telur Sarang', 'Near Masjid Biru', 'Taman Gurun, Kedah, Malaysia', 37.4219983, -122.084, 'safia', '2025-07-12 06:36:27'),
(20, 'terengganu keropok lekor truck', 'Keropok Lekor goreng, Keropok Lekor Kukus, Keropok Lekor Pedas', '', 'Jalan Pantai, Kuala Terengganu, Malaysia', 37.4219983, -122.084, 'Nur Sarah', '2025-07-12 06:38:56'),
(21, 'Mango Truck', 'Harumanis Mango Shake, Harumanis Pudding, Harumani', 'Near Masjid Ular', '45, Jalan Ular, 456789 Kepala Batas, Penang', 37.4219983, -122.084, 'Nur Sarah', '2025-07-12 07:13:55'),
(22, 'Coconut Shale Truck', 'Coconut Shake, Original Coconut, Milk Shake', 'Near Taman Serai Wangi', 'No 98 Jalan Taman Serai Wangi 09400 Padang Serai, Kedah', 37.4219983, -122.084, 'Nur Sarah', '2025-07-12 07:15:01'),
(23, 'Nasi Kerabu Truck', 'Nasi Kerabu Daging, Nasi Kerabu Ayam, Nasi Kerabu Ikan', 'Near Wakaf Che Yah', 'Kelantan, Malaysia', 37.4219983, -122.084, 'Nur Sarah', '2025-07-12 08:31:18'),
(24, 'Dagang Truck', 'Nasi Dagang Kari Ikan, Nasi Dagang Kari Ayam', 'Near Pasar Payang', 'Terengganu, Malaysia', 37.4219983, -122.084, 'Nur Sarah', '2025-07-12 08:44:03'),
(25, 'Mochi Truck', 'Mochi Chocolate, Mochi Original, Mochi Fruit', 'Near Pekan Termeloh', 'Pahang, Malaysia', 37.4219983, -122.084, 'Muhammad Danial', '2025-07-12 16:21:06'),
(37, 'Mochi Truck', 'Mochi Fruit, Mochi salad', 'Near Jalan Manjung', 'Perak, Malaysia', 37.4219983, -122.084, 'safia', '2025-07-12 16:48:11'),
(38, 'Sambal Truck', 'Sambal Ikan, Sambal Ayam', 'Near Jalan Titi Kerbau', 'Selangor, Malaysia', 37.4219983, -122.084, 'safia', '2025-07-12 17:17:48'),
(39, 'Kogi BBQ Truck', 'Korean BBQ Fusion, BBQ Tacos', 'Near street art', 'Penang, Malaysia', 37.4219983, -122.084, 'safia', '2025-07-12 18:10:40'),
(40, 'Roti Bakar Boss', 'Toast & Drinks', 'Near LRT Station', 'Selangor', 3.0725, 101.5195, 'TestUser', '0000-00-00 00:00:00'),
(41, 'Roti Bakar Boss', 'Toast & Drinks', 'Near LRT Station', 'Selangor', 3.0725, 101.5195, 'TestUser', '2025-07-13 02:28:00'),
(42, 'EggTruck', 'Omelette, Salad Egg', 'Jalan Seri Pelangi, Johor', 'Johor Bahru, Malaysia', 37.4219983, -122.084, 'safia', '2025-07-12 18:46:24'),
(43, 'Coconut  Truck', 'Air Kelapa, Air Kelapa Krim', 'Near Highway Tikam Batu', 'Penang, Malaysia', 37.4219983, -122.084, 'Muhammad Danial', '2025-07-12 18:51:55'),
(44, 'Ayam Truck', 'Ayam Korea Pedas, Ayam Korea Biasa, Ayam Korea Manis', 'Near Rawang street', 'Selangor, Malaysia', 37.4219983, -122.084, 'Alif Faisal', '2025-07-12 19:13:54'),
(45, 'Soya Truck', 'Air Soya Hijau, Air Soya Original, Air Soya Gula Hitam', 'Near Pasar Malam Kerteh', 'Kelantan, Malaysia', 37.4219983, -122.084, 'Muhammad Danial', '2025-07-12 19:17:34'),
(46, 'Takoyaki Truck', 'Takoyaki Sotong, Takoyaki Ayam, Takoyaki Udang', 'Near Jalan Dungun', 'Terengganu, Malaysia', 37.4219983, -122.084, 'Muhammad Danial', '2025-07-12 19:34:58'),
(47, 'Kuih Muih Truck', 'All Kuih Muih Selection', 'Near Jalan Masjid Biru', 'Johor, Malaysia', 37.4219983, -122.084, 'Nur Sarah', '2025-07-12 19:45:07'),
(48, 'Golek Truck', 'Ayam Golek, Itik Golek', 'Near Jalan Orked', 'Melaka, Malaysia', 37.4219983, -122.084, 'Nur Sarah', '2025-07-12 19:47:30'),
(49, 'Muaz Ayam Goreng', 'Ayam Goreng Pedas Dan Original', 'Near Pantai Klebang', 'Melaka, Malaysia', 37.4219983, -122.084, 'Nur Sarah', '2025-07-12 19:55:30'),
(50, 'Paru Truck', 'Paru Goreng, Paru Rebus, Paru Sambal Kering', 'Near Pasar Pagi, Kelantan, Malaysia', 'Kelantan, Malaysia', 37.4219983, -122.084, 'Anas', '2025-07-13 01:23:15'),
(51, 'Sushi Truck', 'Sushi Salmon, Sushi Wagyu', 'Near Jalan Gelang Patah, Johor, Malaysia', 'Johor, Malaysia', 37.4219983, -122.084, 'Anas', '2025-07-13 01:32:51'),
(52, 'Sandwich Truck', 'Sandwich Tuna, Sandwich Chicken', 'Near TNB Manjung, Perak, Malaysia', 'Perak, Malaysia', 37.4219983, -122.084, 'Anas', '2025-07-13 01:44:22'),
(53, 'Sausage Truck', 'Sausage Lokching, Sausage Grilled', 'Near Taman Perwira, Temerloh, Pahang, Malaysia', 'Pahang, Malaysia', 37.4219983, -122.084, 'Anas', '2025-07-13 01:56:57'),
(54, 'Kebab Truck', 'Kebab Ayam, Kebab Kambing', 'Near Jalan Kamisah, Kuantan, Pahang, Malaysia', 'Kuantan, Pahang, Malaysia', 37.4219983, -122.084, 'Anas', '2025-07-13 02:10:52'),
(55, 'Jelly Truck', 'Dadih Original, Jelly Ball, Dadih Susu', 'Near Jalan Bunga, Batu Pahat, Johor, Malaysia', 'Batu Pahat, Johor, Malaysia', 37.4219983, -122.084, 'Anas', '2025-07-13 02:22:04'),
(56, 'Bergedil Truck', 'Tauhu Bergedil, Tauhu Bergedil Pedas, Tauhu Bergedil Kicap', 'Near SK Baling', 'No 98 Jalan Taman Serai Wangi 09100 Baling, Kedah', 37.4219983, -122.084, 'Nur Sarah', '2025-07-13 02:39:57'),
(57, 'Ball\'s Truck', 'Jejari Ikan, Jejari Bola', 'Near Sekolan Kebangsaan Kampung Selamat', 'No 76 Jalan Ekor Kucing, Kampung Selamat, Pulau Pinang', 37.4219983, -122.084, 'Muhammad Danial', '2025-07-13 02:44:29'),
(58, 'Maggie Truck', 'Maggie Goreng, Maggie Kuah, Maggie Rebus', 'Near Jalan Sepang Jaya', 'Sepang, Kuala Lumpur, Malaysia', 37.4219983, -122.084, 'Anas', '2025-07-13 03:12:50'),
(59, 'Arabic Truck', 'Arabic Rice Kabsah, Arabic Rice Mandy', 'Near Jalan Masjid Arau, Perlis, Malaysia', 'Arau, Perlis, Malaysia', 37.4219983, -122.084, 'Anas', '2025-07-13 03:21:03'),
(60, 'Arabic Truck', 'Arabic Rice Kabsah, Arabic Rice Mandy', 'Arau, Perlis, Malaysia', 'Near Jalan Masjid Arau, Perlis, Malaysia', 37.4219983, -122.084, 'Anas', '2025-07-13 03:28:50'),
(61, 'Chinese Truck', 'Dumpling, Shark Fin Soup', 'Near Jalan Tepi Titi, Ipoh, Perak, Malaysia', 'Ipoh, Perak, Malaysia', 37.4219983, -122.084, 'Anas', '2025-07-13 03:34:20'),
(62, 'Yogurt Truck', 'Yogurt Original, Yogurt Milk, Yogurt Chocolate', 'Taman Bersatu, Nilai, Negeri Sembilan, Malaysia', 'Nilai, Negeri Sembilan, Malaysia', 37.4219983, -122.084, 'Anas', '2025-07-13 03:42:17'),
(63, 'AAyam Truck', 'Ayam Gunting, Ayam Bergedil, Ayam Pedas', 'Near Masjid Kemaman', 'Kemaman, Terengganu, Malaysia', 37.4219983, -122.084, 'Nur Amirah', '2025-07-13 06:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `tracktruck`
--

CREATE TABLE `tracktruck` (
  `id` int(11) NOT NULL,
  `user_fullname` varchar(100) NOT NULL,
  `foodtype` varchar(100) NOT NULL,
  `foodtruck_name` varchar(100) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `reported_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tracktruck`
--

INSERT INTO `tracktruck` (`id`, `user_fullname`, `foodtype`, `foodtruck_name`, `latitude`, `longitude`, `reported_at`, `created_at`) VALUES
(1, 'safia', 'Ice cream selections', 'Ice cream', 3.1319197, 101.6840589, '2025-07-11 15:49:00', '2025-07-11 07:49:00'),
(2, 'Muhammad Danial', 'Classic Mee Rebus, Mee Rebus Telur, Mee Rebus Daging', 'Johor Mee Rebus Truck', 1.535573, 103.7978201, '2025-07-11 16:52:00', '2025-07-11 08:52:00'),
(3, 'Muhammad Danial', 'Original Roti John, Cheese Roti John, Spicy Chicken Roti John', 'Roti John Truck (KL)', 3.161054, 101.6973946, '2025-07-11 16:52:08', '2025-07-11 08:52:08'),
(4, 'Muhammad Danial', 'Laksa Utara, Laksa Buyong, Laksa Telur Sarang', 'Kedah Laksa Utara Truck', 5.825072, 100.4760029, '2025-07-11 16:52:14', '2025-07-11 08:52:14'),
(5, 'Muhammad Danial', 'Keropok Lekor goreng, Keropok Lekor Kukus, Keropok Lekor Pedas', 'Terengganu Keropok Lekor Truck', 5.3954357, 103.1063424, '2025-07-11 16:52:19', '2025-07-11 08:52:19'),
(6, 'Muhammad Danial', 'Lemang Daging, Lemang Ayam, Lemang Ikan Bakar', 'Negeri Sembilan Lemang Truck', 2.7294354, 101.9366606, '2025-07-11 16:52:26', '2025-07-11 08:52:26'),
(7, 'Muhammad Danial', 'Original Roti John, Cheese Roti John, Spicy Chicken Roti John', 'Roti John Truck (KL)', 3.161054, 101.6973946, '2025-07-11 16:57:45', '2025-07-11 08:57:45'),
(8, 'Muhammad Danial', 'Lemang Daging, Lemang Ayam, Lemang Ikan Bakar', 'Negeri Sembilan Lemang Truck', 2.7294354, 101.9366606, '2025-07-11 17:18:39', '2025-07-11 09:18:39'),
(9, 'Muhammad Danial', 'Original Roti John, Cheese Roti John, Spicy Chicken Roti John', 'Roti John Truck (KL)', 3.161054, 101.6973946, '2025-07-11 23:29:53', '2025-07-11 15:29:53'),
(10, 'Muhammad Danial', 'Keropok Lekor goreng, Keropok Lekor Kukus, Keropok Lekor Pedas', 'Terengganu Keropok Lekor Truck', 5.3954357, 103.1063424, '2025-07-11 23:30:01', '2025-07-11 15:30:01'),
(11, 'Muhammad Danial', 'Original Roti John, Cheese Roti John, Spicy Chicken Roti John', 'Roti John Truck (KL)', 3.161054, 101.6973946, '2025-07-11 23:30:07', '2025-07-11 15:30:07'),
(12, 'Muhammad Danial', 'Original Roti John, Cheese Roti John, Spicy Chicken Roti John', 'Roti John Truck (KL)', 3.161054, 101.6973946, '2025-07-11 23:32:14', '2025-07-11 15:32:14'),
(13, 'Muhammad Danial', 'Laksa Utara, Laksa Buyong, Laksa Telur Sarang', 'Kedah Laksa Utara Truck', 5.825072, 100.4760029, '2025-07-11 23:32:21', '2025-07-11 15:32:21'),
(14, 'Muhammad Danial', 'Menu not available', 'roti john truck (kl)', 3.161054, 101.6973946, '2025-07-11 23:54:26', '2025-07-11 15:54:26'),
(15, 'Muhammad Danial', 'Original Roti John, Cheese Roti John, Spicy Chicken Roti John', 'roti john truck (kl)', 3.161054, 101.6973946, '2025-07-12 00:11:36', '2025-07-11 16:11:36'),
(16, 'Muhammad Danial', 'Keropok Lekor goreng, Keropok Lekor Kukus, Keropok Lekor Pedas', 'terengganu keropok lekor truck', 5.3954357, 103.1063424, '2025-07-12 00:11:42', '2025-07-11 16:11:42'),
(17, 'Muhammad Danial', 'Original Roti John, Cheese Roti John, Spicy Chicken Roti John', 'roti john truck (kl)', 3.161054, 101.6973946, '2025-07-12 04:07:25', '2025-07-11 20:07:25'),
(18, 'Muhammad Danial', 'Classic Mee Rebus, Mee Rebus Telur, Mee Rebus Daging', 'johor mee rebus truck', 1.535573, 103.7978201, '2025-07-12 04:07:31', '2025-07-11 20:07:31'),
(19, 'Alif Faisal', 'Classic Mee Rebus, Mee Rebus Telur, Mee Rebus Daging', 'johor mee rebus truck', 1.535573, 103.7978201, '2025-07-12 04:09:10', '2025-07-11 20:09:10'),
(20, 'Alif Faisal', 'Lemang Daging, Lemang Ayam, Lemang Ikan Bakar', 'negeri sembilan lemang truck', 2.7294354, 101.9366606, '2025-07-12 04:09:17', '2025-07-11 20:09:17'),
(21, 'Alif Faisal', 'Keropok Lekor goreng, Keropok Lekor Kukus, Keropok Lekor Pedas', 'terengganu keropok lekor truck', 5.3954357, 103.1063424, '2025-07-12 04:09:22', '2025-07-11 20:09:22'),
(22, 'Alif Faisal', 'Keropok Lekor goreng, Keropok Lekor Kukus, Keropok Lekor Pedas', 'terengganu keropok lekor truck', 5.3954357, 103.1063424, '2025-07-12 04:09:27', '2025-07-11 20:09:27'),
(23, 'Alif Faisal', 'Keropok Lekor goreng, Keropok Lekor Kukus, Keropok Lekor Pedas', 'terengganu keropok lekor truck', 5.3954357, 103.1063424, '2025-07-12 04:11:45', '2025-07-11 20:11:45'),
(24, 'Alif Faisal', 'Original Roti John, Cheese Roti John, Spicy Chicken Roti John', 'roti john truck (kl)', 3.161054, 101.6973946, '2025-07-12 04:12:28', '2025-07-11 20:12:28'),
(25, 'Alif Faisal', 'Classic Mee Rebus, Mee Rebus Telur, Mee Rebus Daging', 'johor mee rebus truck', 1.535573, 103.7978201, '2025-07-12 04:12:43', '2025-07-11 20:12:43'),
(26, '', 'Original Roti John, Cheese Roti John, Spicy Chicken Roti John', 'roti john truck (kl)', 3.161054, 101.6973946, '2025-07-12 04:12:47', '2025-07-11 20:12:47'),
(38, 'Alif Faisal', 'Laksa Utara, Laksa Buyong, Laksa Telur Sarang', 'kedah laksa utara truck', 5.825072, 100.4760029, '2025-07-12 04:12:59', '2025-07-11 20:12:59'),
(59, 'Anas', 'Original Roti John, Cheese Roti John, Spicy Chicken Roti John', 'roti john truck (kl)', 3.161054, 101.6973946, '2025-07-13 03:12:21', '2025-07-12 19:12:21'),
(60, 'Anas', 'Ice cream selections', 'ice cream', 3.1319197, 101.6840589, '2025-07-13 03:17:55', '2025-07-12 19:17:55'),
(61, 'Anas', 'Ice cream selections', 'ice cream', 3.1319197, 101.6840589, '2025-07-13 03:18:11', '2025-07-12 19:18:11'),
(62, 'Anas', 'Sausage Lokching, Sausage Grilled', 'Sausage Truck', 2.9395791, 101.4757997, '2025-07-13 03:18:27', '2025-07-12 19:18:27'),
(63, 'Anas', 'Kebab Ayam, Kebab Kambing', 'Kebab Truck', 3.967114, 103.401272, '2025-07-13 03:28:47', '2025-07-12 19:28:47'),
(64, 'Anas', 'Yogurt Original, Yogurt Milk, Yogurt Chocolate', 'Yogurt Truck', 2.8213342, 101.7783951, '2025-07-13 03:54:29', '2025-07-12 19:54:29'),
(65, 'Nur Sarah', 'Sausage Lokching, Sausage Grilled', 'Sausage Truck', 2.9395791, 101.4757997, '2025-07-13 04:14:19', '2025-07-12 20:14:19'),
(66, 'Nur Sarah', 'Yogurt Original, Yogurt Milk, Yogurt Chocolate', 'Yogurt Truck', 2.8213342, 101.7783951, '2025-07-13 04:14:26', '2025-07-12 20:14:26'),
(67, 'Nur Sarah', 'Dadih Original, Jelly Ball, Dadih Susu', 'Jelly Truck', 1.8996685, 103.2149557, '2025-07-13 04:19:35', '2025-07-12 20:19:35'),
(68, 'Nur Sarah', 'Keropok Lekor goreng, Keropok Lekor Kukus, Keropok Lekor Pedas', 'terengganu keropok lekor truck', 5.3954357, 103.1063424, '2025-07-13 04:22:42', '2025-07-12 20:22:42'),
(69, 'Nur Sarah', 'Keropok Lekor goreng, Keropok Lekor Kukus, Keropok Lekor Pedas', 'terengganu keropok lekor truck', 5.3954357, 103.1063424, '2025-07-13 04:23:36', '2025-07-12 20:23:36'),
(70, 'Alif Faisal', 'Keropok Lekor goreng, Keropok Lekor Kukus, Keropok Lekor Pedas', 'terengganu keropok lekor truck', 5.3954357, 103.1063424, '2025-07-13 04:24:21', '2025-07-12 20:24:21'),
(71, 'Alif Faisal', 'Keropok Lekor goreng, Keropok Lekor Kukus, Keropok Lekor Pedas', 'terengganu keropok lekor truck', 5.3954357, 103.1063424, '2025-07-13 04:24:25', '2025-07-12 20:24:25'),
(72, 'Alif Faisal', 'Keropok Lekor goreng, Keropok Lekor Kukus, Keropok Lekor Pedas', 'terengganu keropok lekor truck', 5.3954357, 103.1063424, '2025-07-13 04:25:29', '2025-07-12 20:25:29'),
(73, 'Muhammad Danial', 'Keropok Lekor goreng, Keropok Lekor Kukus, Keropok Lekor Pedas', 'terengganu keropok lekor truck', 5.3954357, 103.1063424, '2025-07-13 04:26:18', '2025-07-12 20:26:18'),
(74, 'Muhammad Danial', 'Sausage Lokching, Sausage Grilled', 'Sausage Truck', 2.9395791, 101.4757997, '2025-07-13 04:30:14', '2025-07-12 20:30:14'),
(75, 'Alif Faisal', 'Keropok Lekor goreng, Keropok Lekor Kukus, Keropok Lekor Pedas', 'terengganu keropok lekor truck', 5.3954357, 103.1063424, '2025-07-13 04:34:14', '2025-07-12 20:34:14'),
(76, 'Nur Sarah', 'Keropok Lekor goreng, Keropok Lekor Kukus, Keropok Lekor Pedas', 'terengganu keropok lekor truck', 5.3954357, 103.1063424, '2025-07-13 04:37:39', '2025-07-12 20:37:39'),
(77, 'Nur Sarah', 'Classic Mee Rebus, Mee Rebus Telur, Mee Rebus Daging', 'johor mee rebus truck', 1.535573, 103.7978201, '2025-07-13 04:42:41', '2025-07-12 20:42:41'),
(78, 'Dymim Bahari', 'Sausage Lokching, Sausage Grilled', 'Sausage Truck', 2.9395791, 101.4757997, '2025-07-13 06:03:20', '2025-07-12 22:03:20'),
(79, 'Dymim Bahari', 'Air Soya Hijau, Air Soya Original, Air Soya Gula Hitam', 'Soya Truck', 5.115146, 101.8891721, '2025-07-13 06:09:07', '2025-07-12 22:09:07'),
(80, 'Nur Amirah', 'Air Soya Hijau, Air Soya Original, Air Soya Gula Hitam', 'Soya Truck', 5.115146, 101.8891721, '2025-07-13 06:13:37', '2025-07-12 22:13:37'),
(81, 'Dymim Bahari', 'Nasi Kandar Ayam Berempah, Nasi Kandar Kari Ikan, Nasi Kandar Kari Bendi', 'Nasi Kandar', 4.8420484, 100.7472464, '2025-07-13 07:25:43', '2025-07-12 23:25:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password`, `address`, `latitude`, `longitude`, `created_at`) VALUES
(1, 'Munirah', 'muni@gmail.com', '$2y$10$OwJQ.28keZbBPtFzJu8K3O444R9TLZrK1/ToIrhc6O4EDsrOtyweO', 'Kampung Padang Serai, Kedah, Malaysia', 5.512507, 100.555641, '2025-07-11 15:38:20'),
(3, 'safia', 'safia@gmail.com', '$2y$10$EAuJ5hRaGsGR6Le2mcUGKeq73PikXl0h5w4n7yu7ege96GOaqptD.', 'Kampung Selama, Pulau Pinang, Malaysia', 5.490955, 100.5202642, '2025-07-11 15:46:18'),
(4, 'Muhammad Danial', 'Danial12@gmail.com', '$2y$10$YIjUxjl18k5MO4ERzln8iO7lNEIS5i.QovY1W43UoMF4C6a8BFlE2', 'No 90 Jalan Kucing, Langkawi, Kedah, Malaysia', 6.3661203, 99.7798102, '2025-07-11 16:51:13'),
(6, 'Maisarah Hani', 'mai34@gmail.com', '$2y$10$BuR8fWN7csi6Ni5UeSNgseeFXpeEuFG5q1ln4jygN.PfXGgrXoGii', 'No 89 Jalan Ros, Kulim, Kedah, Malaysia', 5.369217799999999, 100.5562465, '2025-07-11 17:31:47'),
(7, 'Alif Faisal', 'alif1@gmail.com', '$2y$10$Fd9Phv2rwyJUCMnLGrV0luYBzTJVqheGZS0b2ZUJm.Id4vj6B4PNi', 'No 76 Jalan Kucing, Sarawak Malaysia', 1.4628327, 110.3127759, '2025-07-12 04:08:43'),
(8, 'Nur Sarah', 'sar@gmail.com', '$2y$10$sA0QcZl/nz8Rn/D0apXzsuvujiWKkCAuvOJ/JL54J2cZPJUJg33ji', 'No 67 Jalan Kampung Baru, Kuala Lumpur, Malaysia', 3.2046201, 101.6749422, '2025-07-12 06:38:37'),
(9, 'Jamaludin', 'jal2@gmail.com', '$2y$10$IX/bHBAv82zUq..PENqqs.SkaeMmkOJdSo8RXuhRbprVsb6EwqdJ6', 'No 8 Taman Mahsuri, Langkawi, Kedah, Malaysia', 6.326713900000001, 99.80294149999999, '2025-07-12 07:53:37'),
(10, 'Amirul Anwar', 'amirulanwar01@gmail.com', '$2y$10$vU15/xv1LiPp5DIeMWDMxO9PLOUYoHMnimJ4k9B4nQdgHmRzdq5SW', 'No 40 Taman Seri Wang, Arau,Perlis, Malaysia', 6.440518, 100.2735331, '2025-07-12 08:10:22'),
(11, 'Amirul Haqim', 'amirul01@gmail.com', '$2y$10$Huuvv42.yW2TwLY9VGwEl.m64yU3lTPQkZfMV.pldVaS5m9NEaHty', 'No 45 Taman Seri Wang, Arau, Perlis,Malaysia', 6.440518, 100.2735331, '2025-07-12 08:13:51'),
(12, 'Haziq Anwar', 'haziqanwar@gmail.com', '$2y$10$Ah5JQ4jsGjVVNmxIsBo.yuHj6U9uIQF71fV1UFsIla9chlnIMfAaS', 'No 99, Taman Seri Wang,Arau, Perlis,Malaysia', 6.440518, 100.2735331, '2025-07-12 08:17:10'),
(13, 'Dymim Bahari', 'dyamim1@gmail.com', '$2y$10$E7m3E72wnLyCcXJMsGEQGeNAhTIKfWN9adYts500Orc2Hg1NFiNY2', 'No 50, Taman Paya, Beseri,Perlis, Malaysia', 6.5483554, 100.2263694, '2025-07-12 08:22:51'),
(14, 'Anas', 'anas@gmail.com', '$2y$10$6Ymcb/YqZXavaUtb7vIWLeCZym7tiQE9LpxylMw4YRdFtNApsKh.e', 'Kampung Setia Jaya, Yan, Kedah, Malaysia', 5.8866513, 100.4300646, '2025-07-13 01:12:33'),
(30, 'Nur Amirah', 'amirah6@gmail.com', '$2y$10$VyhLP348n5HibNXmMhiEkeZ8zjk13MyQSnLMhDgAKcTZTN.c4rhSq', 'No 78 Jalan Lunas, Kulim, Kedah, Malaysia', 5.4292063, 100.5337269, '2025-07-13 06:12:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `foodtrucks`
--
ALTER TABLE `foodtrucks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_form`
--
ALTER TABLE `report_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracktruck`
--
ALTER TABLE `tracktruck`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `foodtrucks`
--
ALTER TABLE `foodtrucks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `report_form`
--
ALTER TABLE `report_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tracktruck`
--
ALTER TABLE `tracktruck`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
