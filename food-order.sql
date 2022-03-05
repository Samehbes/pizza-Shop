-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2022 at 11:00 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(19, 'Sameh Besan', 'sameh23', 'sameh123'),
(20, ' admin', 'admin', 'admin'),
(21, ' scandar ab ', 'scand', '1234'),
(22, 'George Abou Khalil	', 'georgeak', 'georgeak123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(11, 'Pizza', 'Food_Category_267.jpg', 'Yes', 'Yes'),
(12, 'Burger', 'Food_Category_711.jpg', 'Yes', 'Yes'),
(14, 'dumplings', 'Food_Category_395.jpg', 'Yes', 'Yes'),
(16, 'Drinks', 'Food_Category_527.jpeg', 'No', 'Yes'),
(18, 'Desserts', 'Food_Category_432.jpg', 'No', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(3, 'Dumpling Specials', 'Chckien Dumpling with herbs from Mountains', '5.00', 'Food-Name-1239.jpg', 14, 'Yes', 'Yes'),
(6, 'Best Burger', 'Burger with Ham, Pineapple and lots of Cheese', '4.00', 'Food-Name-1274.jpg', 12, 'Yes', 'Yes'),
(7, 'Smokey BBQ Pizza', 'Best Firewood Pizza in Town', '6.00', 'Food-Name-5068.jpg', 11, 'Yes', 'Yes'),
(9, 'Sadeko Momo', 'Best SPICY Momo For Winter', '6.00', 'Food-Name-855.jpg', 14, 'Yes', 'Yes'),
(11, 'Cheese burger', 'burger with cheese and tomato and onion', '6.00', 'Food-Name-591.jpg', 12, 'Yes', 'Yes'),
(12, 'Chicken Burger', 'burger with a hot chicken and lettuce', '3.00', 'Food-Name-4789.jpg', 12, 'No', 'Yes'),
(13, 'Choco Cake', 'Choco Cake', '4.00', 'Food-Name-7946.jpg', 18, 'Yes', 'Yes'),
(14, 'Coca cola', 'Soda Drink', '1.00', 'Food-Name-8999.jpg', 16, 'Yes', 'Yes'),
(15, 'Corona Beer', 'Corona Beer', '1.00', 'Food-Name-2505.jpg', 16, 'No', 'Yes'),
(16, 'Creamy Chicken', 'Creamy Chicken', '8.00', 'Food-Name-4176.jpg', 14, 'No', 'Yes'),
(17, 'Gyoza', 'Gyoza', '4.00', 'Food-Name-4096.jpg', 14, 'Yes', 'Yes'),
(18, 'Japanese ravioli', 'Japanese ravioli', '3.00', 'Food-Name-191.jpg', 14, 'No', 'Yes'),
(19, 'Macarons', 'Macarons', '2.00', 'Food-Name-3546.jpg', 18, 'Yes', 'Yes'),
(20, 'Pepsi max', 'Pepsi max', '1.00', 'Food-Name-2488.jpg', 16, 'No', 'Yes'),
(21, 'Pizza Funghi', 'Pizza Funghi', '10.00', 'Food-Name-5581.jpg', 11, 'Yes', 'Yes'),
(22, 'Pizza Margarita', 'Pizza Margarita', '10.00', 'Food-Name-7516.jpg', 11, 'Yes', 'Yes'),
(23, 'Pizza Peperoni', 'Pizza Peperoni', '10.00', 'Food-Name-6555.jpg', 11, 'No', 'Yes'),
(24, 'Tasty donuts', 'Tasty donuts', '5.00', 'Food-Name-419.jpg', 18, 'Yes', 'Yes'),
(25, 'Veggie burger', 'Veggie burger', '8.00', 'Food-Name-736.jpg', 12, 'Yes', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(9, 'Best Burger', '4.00', 2, '8.00', '2022-01-11 12:45:41', 'Delivered', 'George ak', '0543548726', 'georgeak@gmail.com', 'Nahariya'),
(11, 'Best Burger', '4.00', 8, '32.00', '2022-01-13 03:30:12', 'On Delivery', 'aviner', '054545455', 'asadas@gmail.com', 'avdon'),
(12, 'Best Burger', '4.00', 1, '4.00', '2022-01-16 02:24:30', 'On Delivery', 'john', '+1 0542 3548', 'john@gmail.com', 'miami');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `code` mediumint(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `code`) VALUES
(2, 'john', 'john123', 'John', 'John@gmail.com', NULL),
(5, 'georgeak', '1234', 'George', 'georgeak752@gmail.com', 525000),
(18, 'samehbesan', 'sameh1234', 'sameh', 'samehbes@gmail.com', 707462);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
