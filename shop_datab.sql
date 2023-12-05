-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2022 at 12:51 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sodb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`,price,`image_01`,`image_02`,`image_03`) VALUES 
(1, 'Modern Sofa','
High Quality With Comfortable Seat',1000,'url(C:/xampp/htdocs/b/ecommerce website/images/sofa/6.jpg)','url(C:/xampp/htdocs/b/ecommerce website/images/sofa/8.jpg)','url(C:/xampp/htdocs/b/ecommerce website/images/sofa/image(1).jpg)'),
(2, 'Sofa','
High Quality With Comfortable Seat',990,'url(../images/sofa/4.jpg)','url(../images/sofa/images (3).jpg)','url(../images/sofa/image(2).jpg)'),
(3, 'Brand Sofa','
High Quality With Comfortable Seat and Back',1200,'url(../images/sofa/5.webp)','url(../images/sofa/	
11.webp)','url(../images/sofa/images (10).jpg)'),
(4, 'Luxury Sofa','
High Quality with Manageable Price',2000,'url(../images/sofa/13.jpg)','url(../images/sofa/images (5).jpg)','url(../images/sofa/images (11).jpg'),
(5, 'Luxury Kitchen Cabinate','
High Quality with Persist Fire',1300,'url(../images/kitchen cabinet/download (7).jpg)','url(../images/kitchen cabinet/images (15).jpg)','url(../images/kitchen cabinet/images (3).jpg)'),
(6, 'Brand Kitchen Cabinate','
High Quality with Last Longer',1000,'url(../images/kitchen cabinet/images (2).jpg)','url(../images/kitchen cabinet/download (2).jpg)','url(../images/kitchen cabinet/download (7).jpg)'),
(7, 'Kitchen Cabinate','
High Quality',980,'url(../images/kitchen cabinet/images (4).jpg)','url(../images/kitchen cabinet/download (1).jpg)','url(../images/kitchen cabinet/image(1).jpg)'),
(8, 'Modern Kitchen Cabinate','
High Quality',1000,'url(../images/kitchen cabinet/images (11).jpg)','url(../images/kitchen cabinet/images (9).jpg)','url(../images/kitchen cabinet/image(8).jpg)'),
(9, 'Brand Dining Table','
High Quality',900,'url(../images/digning table/download (5).jpg)','url(../images/digning table/download (8).jpg)','url(../images/digning table/download (3).jpg)'),
(10, 'Dining Table','
High Quality',890,'url(../images/digning table/images (1).jpg)','url(../images/digning table/images (3).jpg)','url(../images/digning table/image(5).jpg)'),
(11, 'Modern Dining Table','
High Quality With',900,'url(../images/digning table/images (10).jpg)','url(../images/digning table/images (11).jpg)','url(../images/digning table/image(12).jpg)'),
(12, 'Luxury Dining Table','
High Quality With',1300,'url(../images/digning table/images (16).jpg)','url(../images/digning table/download (4).jpg)','url(../images/digning table/download (1).jpg)'),
(13, 'luxury Closet','
High Quality with Bonus packet',1500,'url(../images/closet/download.jpg)','url(../images/closet/images (6).jpg)','url(../images/closet/image(4).jpg)'),
(14, 'Modern Closet','
High Quality with Strong Component',1300,'url(../images/closet/images (5).jpg)','url(../images/closet/download (5).jpg)','url(../images/closet/download (3).jpg)'),
(15, 'Closet','
High Quality',1100,'url(../images/closet/download (3).jpg)','url(../images/closet/images (2).jpg)','url(../images/closet/image(8).jpg)'),
(16, 'Brand Closet','
High Quality',1200,'url(../images/closet/download (1).jpg)','url(../images/closet/download (2).jpg)','url(../images/closet/download (7).jpg'),
(17, 'Luxury Beauty Table','
High Quality',1400,'url(../images/beauty table/12.png)','url(../images/beauty table/1.png)','url(../images/beauty table/5.png)'),
(18, 'Modern Beauty Table','
High Quality',1300,'url(../images/beauty table/14.png)','url(../images/beauty table/11.png)','url(../images/beauty table/10.png)'),
(19, 'Beauty Table','
High Quality',1100,'url(../images/beauty table/9.png)','url(../images/beauty table/8.png)','url(../images/beauty table/6.png)'),
(20, 'Brand Beauty Table','
High Quality',1000,'url(../images/beauty table/2.png)','url(../images/beauty table/5.png)','url(../images/beauty table/13.png)'),
(21, 'Luxury Sofa table','
High Quality',700,'url(../images/sofa table/1.png)','url(../images/sofa table/2.png)','url(../images/sofa table/5.png)'),
(22, 'Modern Sofa table','
High Quality',600,'url(../images/sofa table/4.png)','url(../images/sofa table/7.png)','url(../images/sofa table/6.png)'),
(23, 'Luxury TV Stand','
High Quality',800,'url(../images/tv stand/6.png)','url(../images/tv stand/8.png)','url(../images/tv stand/1.png)'),
(24, 'Brand TV Stand','
High Quality',700,'url(../images/tv stand/3.png)','url(../images/tv stand/8.png)','url(../images/tv stand/4.png)'),
(25, 'Luxury Shelf','
High Quality with 1 Year Guaranty',800,'url(../images/shelf/images(2).jpg)','url(../images/shelf/images(3).jpg)','url(../images/shelf/image(12).jpg)'),
(26, 'Modern Shelf','
High Quality',700,'url(../images/shelf/images(14).jpg)','url(../images/shelf/images(13).jpg)','url(../images/shelf/image(8).jpg)'),
(27, 'Luxury Bed','
High Quality With Comfortable at Back',900,'url(../images/bed/download(3).jpg)','url(../images/bed/download(4))','url(../images/bed/download(7).jpg)'),
(28, 'Modern Bed','
High Quality',750,'url(../images/bed/download(10))','url(../images/bed/download)','url(../images/bed/download(6))'),
(29, 'Luxury Office Table','
High Quality',1000,'url(../images/office table/c.png)','url(../images/office table/i.png)','url(../images/office table/j.png'),
(30, 'Modern Office Table','
High Quality',900,'url(../images/office table/f.png)','url(../images/office table/h.png)','url(../images/office table/c.png)'),
(31, 'Luxury Study Table ','
High Quality',600,'url(../images/Reading Table /1.jpg)','url(../images/Reading Table /2.jpg)','url(../images/Reading Table /3.jpg)'),
(32, 'Modern Study Table','
High Quality',500,'url(../images/Reading Table /4.jpg)',
'url(../images/Reading Table /5.jpg)','url(../images/Reading Table /6.jpg)');


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
