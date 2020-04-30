-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: May 08, 2019 at 05:06 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_country` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(1, 'Duy Anh', 'bladesandsoul009@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'Boss.jpg', 'Viet Nam', 'afdsfasdfadsfadsfadsfadsfa', '123456789', 'Jobless');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, 'Men', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec tincidunt sem, eget fermentum libero. In pellentesque, est at sodales commodo, lacus sem ultricies tellus, non euismod risus ipsum non libero. Vivamus eget augue nisi. Pellentesque pretium, nisl ac portti'),
(2, 'Women', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec tincidunt sem, eget fermentum libero. In pellentesque, est at sodales commodo, lacus sem ultricies tellus, non euismod risus ipsum non libero. Vivamus eget augue nisi. Pellentesque pretium, nisl ac portti'),
(3, 'Kids', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec tincidunt sem, eget fermentum libero. In pellentesque, est at sodales commodo, lacus sem ultricies tellus, non euismod risus ipsum non libero. Vivamus eget augue nisi. Pellentesque pretium, nisl ac portti'),
(4, 'Others', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec tincidunt sem, eget fermentum libero. In pellentesque, est at sodales commodo, lacus sem ultricies tellus, non euismod risus ipsum non libero. Vivamus eget augue nisi. Pellentesque pretium, nisl ac portti');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` int(100) NOT NULL,
  `product_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`) VALUES
(4, 5, 1, 2147483647, 'Man Shirts', 'Fashion-Cotton-Linen-Shirt-Men-Clothes-Casual-Slim-Fit-Mens-Shirts-Stand-Collar-Summer-Short-Sleeve.jpg_640x640.jpg', '', '', 12, 0, '                              \r\n                              Good                              \r\n                          '),
(5, 5, 1, 2147483647, 'Another Shirts', 'preview.jpg', '', '', 50, 0, 'good'),
(6, 2, 1, 2147483647, 'adfadf', 'Fashion-Cotton-Linen-Shirt-Men-Clothes-Casual-Slim-Fit-Mens-Shirts-Stand-Collar-Summer-Short-Sleeve.jpg_640x640.jpg', 'preview.jpg', 'Apex Legends Screenshot 2019.02.25 - 20.55.38.93.png', 90, 0, 'asdfasdfadfa');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(2, 'Accessories', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec tincidunt sem, eget fermentum libero. In pellentesque, est at sodales commodo, lacus sem ultricies tellus, non euismod risus ipsum non libero. Vivamus eget augue nisi. Pellentesque pretium, nisl ac portti'),
(3, 'Shoes', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec tincidunt sem, eget fermentum libero. In pellentesque, est at sodales commodo, lacus sem ultricies tellus, non euismod risus ipsum non libero. Vivamus eget augue nisi. Pellentesque pretium, nisl ac portti'),
(4, 'Coats', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec tincidunt sem, eget fermentum libero. In pellentesque, est at sodales commodo, lacus sem ultricies tellus, non euismod risus ipsum non libero. Vivamus eget augue nisi. Pellentesque pretium, nisl ac portti'),
(5, 'T-Shirts', 'adfadfagkdfgjhadf');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `slide_name`, `slide_image`) VALUES
(1, 'Slide number 1', 'slide-1.jpg'),
(2, 'Slide number 2', 'slide-2.jpg'),
(3, 'Slide number 3', 'slide-3.jpg'),
(4, 'Slide number 4', 'slide-4.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

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
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
