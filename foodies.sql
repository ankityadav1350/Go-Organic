-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jul 29, 2022 at 05:12 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodies`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(3, 'Surya Kant Singh', 'jahnwar19', '47ecaf777faf39c601862a6df0e3ba4a'),
(5, 'Alex John', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(225) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(6, 'Banana', 'Food_Category_615.jpg', 'No', 'Yes'),
(8, 'Capsicum', 'Food_Category_422.jpg', 'Yes', 'No'),
(11, 'Raddish', 'Food_Category_730.jpg', 'Yes', 'Yes'),
(13, 'Spinach', 'Food_Category_289.jpg', 'Yes', 'Yes'),
(14, 'Beans', 'Food_Category_282.jpg', 'Yes', 'Yes'),
(15, 'Apple', 'Food_Category_341.jpg', 'No', 'No'),
(16, 'Strawberry', 'Food_Category_312.jpg', 'Yes', 'Yes'),
(17, 'Mushroom', 'Food_Category_304.jpg', 'Yes', 'Yes'),
(19, 'Naspati', 'Food_Category_412.jpg', 'Yes', 'Yes'),
(24, 'Potato', 'Food_Category_812.jpg', 'Yes', 'Yes'),
(25, 'Tomato', 'Food_Category_565.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner_name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `owner_name`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(33, 'Raghu', 'Banana', 'Fresh and Organic', '2.00', 'Food-Name-174.jpg', 6, 'Yes', 'Yes'),
(34, 'Viany', 'Raddish', 'Fresh and Organic', '3.00', 'Food-Name-7208.jpg', 11, 'Yes', 'Yes'),
(35, 'Sourav', 'Beans', 'Fresh and Organic', '2.00', 'Food-Name-7732.jpg', 13, 'Yes', 'Yes'),
(36, 'Abhishek', 'Beans', 'Fresh', '3.00', 'Food-Name-7305.jpg', 14, 'Yes', 'Yes'),
(37, 'Archit ', 'Beans', 'Fresh', '4.00', 'Food-Name-6559.jpg', 14, 'Yes', 'Yes'),
(38, 'Mangalam', 'Toamto', 'Fresh', '3.00', 'Food-Name-881.jpg', 25, 'Yes', 'Yes'),
(39, 'Sourav', 'Potato', 'Fresh', '2.00', 'Food-Name-7790.jpg', 6, 'Yes', 'Yes'),
(40, 'Ankit', 'Mushroom', 'Fresh and Organic', '4.00', 'Food-Name-2755.jpg', 17, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner_name` varchar(100) NOT NULL,
  `food` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `owner_name`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(1, '', 'Onion', '3.00', 1, '3.00', '2022-07-14 01:40:55', 'Delivered', 'Surya Kant Singh', '8742748746', 'surya19022001@gmail.com', 'Lekha Nagar Cantt Road Khagaul'),
(2, '', 'Banana', '2.00', 1, '2.00', '2022-07-14 01:42:51', 'Delivered', 'Surya Kant Singh', '45425255', 'surya19022001@gmail.com', 'Lekha Nagar Cantt Road Khagaul'),
(3, 'Abhishek', 'Banana', '2.00', 1, '2.00', '2022-07-14 04:05:03', 'On Delivery', 'Surya Kant Singh', '43545', 'surya19022001@gmail.com', 'Lekha Nagar Cantt Road Khagaul'),
(4, 'Sourav', 'Banana', '2.00', 2, '4.00', '2022-07-14 04:41:57', 'Delivered', 'Surya Kant Singh', 'q34343', 'surya19022001@gmail.com', 'Lekha Nagar Cantt Road Khagaul'),
(5, 'Raghu', 'Apple', '2.00', 1, '2.00', '2022-07-14 07:16:11', 'Ordered', 'Yashika', '8726846326', 'yashika@gmail.com', 'Muzaffarpur...'),
(6, 'Vinay', 'Onion', '3.00', 1, '3.00', '2022-07-14 07:24:48', 'Ordered', 'Sakshi (Putoh)', '863463483', 'sakshi@putoh.com', 'Muzarffarpur...'),
(7, 'Sourav', 'Beans', '2.00', 2, '4.00', '2022-07-14 09:26:14', 'Cancelled', 'Shivam', '84636436', 'shivam@gmail.com', 'Phulwari'),
(8, 'Pancholi', 'Cabbage', '40.00', 1, '40.00', '2022-07-17 07:50:39', 'Cancelled', 'Vinay', '34934093249', 'mukesh@mukes.com', 'agumakyf'),
(9, 'Abhishek', 'Spinach', '2.00', 2, '4.00', '2022-07-24 09:37:01', 'Ordered', 'sgd', '343', 'surya@gmail.com', 'Lekha Nagar Cantt Road Khagaul'),
(10, 'Abhishek', 'Spinach', '2.00', 2, '4.00', '2022-07-24 09:37:18', 'Ordered', 'sgd', '343', 'surya@gmail.com', 'Lekha Nagar Cantt Road Khagaul');

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
