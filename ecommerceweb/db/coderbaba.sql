-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Okt 2018 pada 03.35
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.4

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
-- Struktur dari tabel `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `brands`
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
-- Struktur dari tabel `cart`
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
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `product_title`, `product_image`, `qty`, `price`, `total_amt`) VALUES
(1, 1, '0', 0, 'Samsung Dous 2', 'samsung mobile.jpg', 1, 5000, 5000),
(2, 2, '0', 0, 'iPhone 5s', 'iphone mobile.jpg', 1, 25000, 25000),
(3, 1, '0', 4, 'Samsung Dous 2', 'samsung mobile.jpg', 1, 5000, 5000),
(4, 2, '0', 4, 'iPhone 5s', 'iphone mobile.jpg', 1, 25000, 25000),
(5, 2, '0', 7, 'Gery Cokelat', '2.png', 2, 25000, 50000),
(6, 1, '0', 7, 'Gournet Salted Egg Yolk', '1.png', 15, 5000, 75000),
(7, 3, '0', 7, 'Kacang Garuda Rosta', '3.png', 1, 30000, 30000),
(13, 1, '0', 8, 'Gournet Salted Egg Yolk', '1.png', 1, 5000, 5000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `categories`
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
-- Struktur dari tabel `products`
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
-- Dumping data untuk tabel `products`
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
-- Struktur dari tabel `user_info`
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
-- Dumping data untuk tabel `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'demo', 'demo', 'demo@gmal.com', '12345', '123456789', 'Kolkata', 'VIP Road'),
(2, 'Rizwan', 'Khan', 'rizwankhan.august16@gmail.com', '25f9e794323b453885f5181f1b624d0b', '9832268432', 'Hutton Road', 'Kolkata'),
(3, 'Rizwan', 'Khan', 'salmankhan@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080182', 'Hutton Road', 'Asansol'),
(4, 'Andi', 'Fila', 'andifila@gmail.com', '285e08248bbf7b826fafb4b2643c24bd', '1234567890', 'Malang', 'Malang'),
(5, 'Irfan', 'Faishol', 'irfanfaishol@gmail.com', '3fc0a7acf087f549ac2b266baf94b8b1', '1234567890', 'Malang', 'Malang'),
(6, 'Andi', 'Fila', 'stiki@asidkia.com', '25d55ad283aa400af464c76d713c07ad', '1234567890', 'MLG', 'MLG'),
(7, 'Agel', 'Firman', 'asdasd@adsdas.com', '25d55ad283aa400af464c76d713c07ad', '1234567893', 'asdas', 'dasdasda'),
(8, 'Andi', 'Fila', 'stiki@stiki.com', 'e807f1fcf82d132f9bb018ca6738a19f', '1234567890', 'Mlg', 'mlg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indeks untuk tabel `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
