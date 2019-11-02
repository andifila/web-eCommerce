-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2019 at 04:45 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coderbaba`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Mentos'),
(2, 'Nestle'),
(3, 'Dua Kelinci'),
(4, 'Siantar Top'),
(5, 'Coca - Cola'),
(6, 'Aqua');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_title` varchar(200) NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `qty` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `total_amt` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `product_title`, `product_image`, `qty`, `price`, `total_amt`) VALUES
(1, 1, '0', 0, 'Samsung Dous 2', 'samsung mobile.jpg', 1, 5000, 5000),
(2, 2, '0', 0, 'iPhone 5s', 'iphone mobile.jpg', 1, 25000, 25000),
(3, 1, '0', 4, 'Samsung Dous 2', 'samsung mobile.jpg', 1, 5000, 5000),
(4, 2, '0', 4, 'iPhone 5s', 'iphone mobile.jpg', 1, 25000, 25000),
(5, 2, '0', 7, 'Gery Cokelat', '2.png', 2, 25000, 50000),
(6, 1, '0', 7, 'Gournet Salted Egg Yolk', '1.png', 15, 5000, 75000),
(7, 3, '0', 7, 'Kacang Garuda Rosta', '3.png', 1, 30000, 30000),
(13, 1, '0', 8, 'Gournet Salted Egg Yolk', '1.png', 1, 5000, 5000),
(14, 1, '0', 1, 'Gournet Salted Egg Yolk', '1.png', 1, 5000, 5000),
(15, 2, '0', 1, 'Gery Cokelat', '2.png', 1, 25000, 25000);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Biskuit dan Kue'),
(2, 'Makanan Beku'),
(3, 'Makanan Manis'),
(4, 'Makanan Kering'),
(5, 'Minuman'),
(6, 'Makanan dan Minuman Kesehatan'),
(7, 'Makanan Siap Saji');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 2, 'Gournet Salted Egg Yolk', 5000, 'Gournet Salted Egg Yolk', '1.png', 'samsung mobile electronics'),
(2, 1, 3, 'Gery Cokelat', 25000, 'Gery Cokelat', '2.png', 'mobile iphone apple'),
(3, 1, 3, 'Kacang Garuda Rosta', 30000, 'Kacang Garuda Rosta', '3.png', 'apple ipad tablet'),
(4, 1, 3, 'Cheetos Jagung Bakar', 32000, 'Cheetos Jagung Bakar', '4.png', 'iphone apple mobile'),
(5, 1, 2, 'Kacang Telur Garuda', 10000, 'Kacang Telur Garuda', '5.png', 'ipad tablet samsung'),
(6, 1, 1, 'Oishi', 35000, 'Oishi', '6.png', 'hp laptop '),
(7, 1, 1, 'Tic Tac', 50000, 'Tic Tac', '7.png', 'Laptop Hp Pavillion'),
(8, 1, 4, 'Nabati Waffer', 40000, 'Nabati Waffer', '8.png', 'sony mobile'),
(9, 1, 3, 'Twistko', 12000, 'Twistko', '9.png', 'iphone apple mobile');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nim` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `kodepos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nim`, `nama`, `kota`, `kodepos`) VALUES
(3, 'Lala', 'Makassar', 0),
(4, 'Delima', 'Medan', 0),
(5, 'Dinra', 'Semarang', 0),
(7, 'Diah', 'Krembung', 0),
(8, 'Supadi', 'Lamongan', 0),
(13, 'Muhammad Irfan Faishol', 'Sidoarjo', 0),
(15, 'izza', 'mojokerto', 892738),
(16, 'test', 'kota', 7298172);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(35) NOT NULL,
  `level` enum('penjual','admin','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`) VALUES
(8, 'irfan', '202cb962ac59075b964b07152d234b70', 'penjual'),
(9, 'faishol', '202cb962ac59075b964b07152d234b70', 'admin'),
(10, 'coba', '202cb962ac59075b964b07152d234b70', 'admin'),
(11, 'penjual', '202cb962ac59075b964b07152d234b70', 'penjual'),
(12, 'admin', '202cb962ac59075b964b07152d234b70', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Andi', 'Fila', 'login@admin.com', 'e807f1fcf82d132f9bb018ca6738a19f', '1234567890', 'Mlg', 'mlg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `nim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
