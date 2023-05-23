CREATE DATABASE IF NOT EXISTS `smartshop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `smartshop`;

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Microsoft'),
(2, 'Google'),
(3, 'Apple'),
(4, 'Sony'),
(5, 'LG'),
(6, 'Intel'),
(7, 'Xiaomi'),
(8, 'HP'),
(9, 'Cisco'),
(10, 'DELL'),
(11, 'Amazon'),
(12, 'Samsung');



CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_image` varchar(300) NOT NULL,
  `qty` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `total_amount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `product_title`, `product_image`, `qty`, `price`, `total_amount`) VALUES
(79, 11, '0.0.0.0', 2, 'Samsung phone', 'samsung.JPG', 1, 1200, 1200),
(80, 2, '0.0.0.0', 2, 'iphone14', 'iphone.JPG', 1, 1300, 1300);


CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'TV'),
(2, 'Telefonos'),
(3, 'Relojes'),
(4, 'Robotica'),
(5, 'Ordenadores'),
(6, 'Videoconsolas');

CREATE TABLE `customer_order` (
  `id` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_price` int(100) NOT NULL,
  `p_qty` int(100) NOT NULL,
  `p_status` varchar(100) NOT NULL,
  `tr_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `customer_order` (`id`, `uid`, `pid`, `p_name`, `p_price`, `p_qty`, `p_status`, `tr_id`) VALUES
(30, 2, 1, 'Samsung', 1200, 1, 'CONFIRMED', '15179'),
(31, 2, 2, 'Reloj', 200, 1, 'CONFIRMED', '15179'),
(32, 2, 3, 'Ordenador DELL', 1500, 1, 'CONFIRMED', '15179');


CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` varchar(100) NOT NULL,
  `product_brand` varchar(100) NOT NULL,
  `product_title` varchar(50) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, '1', '2', 'Samsung Galaxy S23', 1200, 'Samsung  Galaxy S23 512Gb', 'samsung.JPG', 'samsung mobile electronics'),
(2, '1', '3', 'Reloj', 200, 'Smartwatch Xiaomi ', 'reloj.JPG', 'xiaomi electronics'),
(3, '1', '3', 'Ordenador DELL', 30000, 'Ordenador DELL I7 16Gb', 'dell.jpg', 'DELL computers');

CREATE TABLE `received_payment` (
  `id` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `amt` int(100) NOT NULL,
  `tr_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Marcos', 'Dieguez', 'marcosxp.ma@gmail.com', '3814d460c26c2dbab2d80294d2cc9882', '8324567543', 'Calle Mallorca 123', 'Palma 1234'),
(2, 'Jose', 'Lopez', 'jlopez@gmail.com', '6cebe3b43c4495fdf87fcaa43b485236', '9876546754', 'Calle Ibiza 54', 'Rozas 23');

ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);


ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);


ALTER TABLE `received_payment`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `customer_order`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

ALTER TABLE `received_payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

