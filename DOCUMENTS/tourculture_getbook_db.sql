-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 09, 2025 at 02:32 PM
-- Server version: 8.0.37
-- PHP Version: 8.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourculture_getbook_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_to_cart_tab`
--

CREATE TABLE `add_to_cart_tab` (
  `sn` int NOT NULL,
  `shop_session` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `product_id` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `product_qty` int NOT NULL,
  `sub_price` double NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_tab`
--

CREATE TABLE `book_tab` (
  `sn` int NOT NULL,
  `book_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `no_of_pages` int NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_tab`
--

INSERT INTO `book_tab` (`sn`, `book_id`, `title`, `subtitle`, `description`, `publisher`, `no_of_pages`, `language`, `price`, `image_url`, `image`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 'BK000320241017092529', 'THE ALCHEMIST', 'HISTORY |  MILITARY | PHILOSOPHY', 'The Art of War is a renowned ancient Chinese military treatise  written by Sun Tzu, a military strategist and philosopher. Composed  around the fifth century BC, it provides valuable insights into warfare  and strategy. The book emphasizes the importance of careful planning,  understanding the enemy, exploiting weaknesses, and employing tactics to  achieve victory... Read Full Overview', 'BY PAULO COELHO', 70, 'ENGLISH', 50.00, 'https://1stculturetour.com/api/getbookapi/uploaded-files/book-pix', 'thealchemist.jpeg', 1, '2024-10-17 08:25:29', '2024-11-11 06:03:06'),
(5, 'BK000720241017094108', 'HUSTLE HARDER,\nHUSTLE SMARTER', 'HISTORY |  MILITARY | PHILOSOPHY', 'The Art of War is a renowned ancient Chinese military treatise  written by Sun Tzu, a military strategist and philosopher. Composed  around the fifth century BC, it provides valuable insights into warfare  and strategy. The book emphasizes the importance of careful planning,  understanding the enemy, exploiting weaknesses, and employing tactics to  achieve victory... Read Full Overview', 'BY CURTIS JACKSON', 50, 'HAUSA', 70.00, 'https://1stculturetour.com/api/getbookapi/uploaded-files/book-pix', 'book3.png', 1, '2024-10-17 08:41:08', '2024-11-11 06:03:14'),
(6, 'BK000820241018045355', 'THE ABSENT FATHER\nEFFECT ON DAUGHTERS HUSTLE SMARTER', 'HISTORY |  MILITARY | PHILOSOPHY', 'The Art of War is a renowned ancient Chinese military treatise  written by Sun Tzu, a military strategist and philosopher. Composed  around the fifth century BC, it provides valuable insights into warfare  and strategy. The book emphasizes the importance of careful planning,  understanding the enemy, exploiting weaknesses, and employing tactics to  achieve victory... Read Full Overview', 'BY SUSAN E. SCHWARTZ', 40, 'IGBO', 100.00, 'https://1stculturetour.com/api/getbookapi/uploaded-files/book-pix', 'book2.png', 1, '2024-10-18 15:53:55', '2024-11-11 06:03:18');

-- --------------------------------------------------------

--
-- Table structure for table `customer_tab`
--

CREATE TABLE `customer_tab` (
  `sn` int NOT NULL,
  `access` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setup_backend_settings_tab`
--

CREATE TABLE `setup_backend_settings_tab` (
  `sn` int NOT NULL,
  `backend_setting_id` varchar(10) NOT NULL,
  `smtp_host` varchar(100) NOT NULL,
  `smtp_username` varchar(100) NOT NULL,
  `smtp_password` varchar(100) NOT NULL,
  `smtp_port` int NOT NULL,
  `sender_name` varchar(100) NOT NULL,
  `support_email` varchar(100) NOT NULL,
  `delivery_fee` decimal(10,0) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `account_number` varchar(20) NOT NULL,
  `payment_key` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setup_backend_settings_tab`
--

INSERT INTO `setup_backend_settings_tab` (`sn`, `backend_setting_id`, `smtp_host`, `smtp_username`, `smtp_password`, `smtp_port`, `sender_name`, `support_email`, `delivery_fee`, `bank_name`, `account_name`, `account_number`, `payment_key`, `date`) VALUES
(1, 'BK_ID001', 'mail.agrohandlers.com', 'info@agrohandlers.com', '1971@@@ademorinola12', 465, 'AgroHandlers', 'afootech2016@gmail.com', 2000, 'FIRST BANK PLC', 'PLUSHOME TECH LIMITED', '2041718223', 'pk_test_5a27902934264b8a8f8120c15c4c0f198b9715e3', '2023-04-04 20:54:20');

-- --------------------------------------------------------

--
-- Table structure for table `setup_counter_tab`
--

CREATE TABLE `setup_counter_tab` (
  `sn` int NOT NULL,
  `counter_id` varchar(100) NOT NULL,
  `counter_discription` varchar(225) NOT NULL,
  `counter_value` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setup_counter_tab`
--

INSERT INTO `setup_counter_tab` (`sn`, `counter_id`, `counter_discription`, `counter_value`) VALUES
(1, 'USER', 'USER ID COUNT', 54),
(2, 'BK', 'BOOK COUNT', 10);

-- --------------------------------------------------------

--
-- Table structure for table `setup_status_tab`
--

CREATE TABLE `setup_status_tab` (
  `sn` int NOT NULL,
  `status_id` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `status_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setup_status_tab`
--

INSERT INTO `setup_status_tab` (`sn`, `status_id`, `status_name`) VALUES
(1, '1', 'ACTIVE'),
(2, '2', 'SUSPENDED');

-- --------------------------------------------------------

--
-- Table structure for table `user_tab`
--

CREATE TABLE `user_tab` (
  `sn` int NOT NULL,
  `access_key` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status_id` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `otp` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `date` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_tab`
--

INSERT INTO `user_tab` (`sn`, `access_key`, `user_id`, `fullname`, `email`, `status_id`, `otp`, `password`, `date`, `updated_at`) VALUES
(1, '03d7adb4eb822ede766c49b2add4053b', 'USER000520241021062916', 'AFOLABI ABAYOMI', 'afolabitaiwoabayomi112@gmail.com', '1', '', 'f769485f2b7e303561aa44d1c0867cd7', '2024-10-21 17:29:16', '2025-02-12 18:38:59'),
(5, '', 'USER005020241108024618', 'dvsfsdf', 'afolabitaiwoabayomi1121@gmail.com', '1', '0', 'f769485f2b7e303561aa44d1c0867cd7', '2024-11-07 21:46:18', '2024-11-08 02:46:18'),
(6, '2807058c627051853edbbe93f1361217', 'USER005120241108120415', 'Mike Afolabi', 'mikeafolabi@gmail.com', '1', '0', 'f769485f2b7e303561aa44d1c0867cd7', '2024-11-08 07:04:15', '2024-11-08 12:05:11'),
(7, '44a49d5ab423c91eb24e3147aead832d', 'USER005220241110075521', 'abayomi taiwo', 'abayomi@gmail.com', '1', '0', '202cb962ac59075b964b07152d234b70', '2024-11-10 14:55:21', '2024-11-23 07:35:08'),
(8, '5c91f894e985a695ce10edf29351c789', 'USER005320241111061718', 'Opaaje James', 'Jopaaje073@gmail.com', '1', '0', '04fe19a33af38555bf65b5dc29e85e4c', '2024-11-11 01:17:18', '2024-11-11 06:20:46'),
(9, '802ae110bc0755976739f4728ff7efc7', 'USER005420241216102503', 'Paul Emmanuel', 'seunemmanuel107@gmail.com', '1', '0', '435d4104371e8c05279ea6ccd5ab7398', '2024-12-16 17:25:03', '2024-12-16 22:26:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_to_cart_tab`
--
ALTER TABLE `add_to_cart_tab`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `book_tab`
--
ALTER TABLE `book_tab`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `setup_backend_settings_tab`
--
ALTER TABLE `setup_backend_settings_tab`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `setup_counter_tab`
--
ALTER TABLE `setup_counter_tab`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `setup_status_tab`
--
ALTER TABLE `setup_status_tab`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `user_tab`
--
ALTER TABLE `user_tab`
  ADD PRIMARY KEY (`sn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_to_cart_tab`
--
ALTER TABLE `add_to_cart_tab`
  MODIFY `sn` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_tab`
--
ALTER TABLE `book_tab`
  MODIFY `sn` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `setup_backend_settings_tab`
--
ALTER TABLE `setup_backend_settings_tab`
  MODIFY `sn` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setup_counter_tab`
--
ALTER TABLE `setup_counter_tab`
  MODIFY `sn` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `setup_status_tab`
--
ALTER TABLE `setup_status_tab`
  MODIFY `sn` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_tab`
--
ALTER TABLE `user_tab`
  MODIFY `sn` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
