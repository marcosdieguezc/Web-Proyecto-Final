DROP DATABASE IF EXISTS `smartshop`;
CREATE DATABASE IF NOT EXISTS `smartshop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `smartshop`;

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Nintendo'),
(2, 'Google'),
(3, 'Apple'),
(4, 'Sony'),
(5, 'LG'),
(6, 'Garmin'),
(7, 'Xiaomi'),
(8, 'HP'),
(9, 'Asus'),
(10, 'DELL'),
(11, 'Lenovo'),
(12, 'Samsung'),
(13, 'Microsoft');



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
(1, '2', '12', 'Samsung Galaxy S23 128gb', 1200, 'Samsung  Galaxy S23 512Gb', 'samsung.JPG', 'samsung mobile electronics'),
(2, '3', '7', 'Reloj Samsung Watchfit', 200, 'Smartwatch Samsung ', 'reloj.JPG', 'xiaomi electronics'),
(3, '5', '10', 'DELL Vostro 3410 i7 16Gb', 1300, 'Ordenador DELL I7 16Gb', 'dell.jpg', 'DELL computers'),
(4, '2', '3', 'iPhone 14 Pro 256GB', 1300, 'Apple iPhone 14 Pro 256GB', 'iphone14.jpg', 'Apple smartphones'),
(5, '2', '2', 'Google Pixel 6 128GB', 900, 'Google Pixel 6 128GB 5G Smartphone', 'pixel6.jpg', 'Google smartphones'),
(6, '1', '5', 'LG OLED65CXPUA', 2500, 'LG OLED65CXPUA 65" 4K Smart OLED TV', 'lg_oled.jpg', 'LG televisions'),
(7, '4', '7', 'iRobot Roomba i7+', 800, 'iRobot Roomba i7+ Robot Vacuum Cleaner', 'roomba.jpg', 'iRobot robotic cleaners'),
(8, '4', '7', 'DJI Mavic Air 2', 1000, 'DJI Mavic Air 2 Drone Quadcopter', 'mavic_air2.jpg', 'DJI drones'),
(9, '6', '1', 'Nintendo Switch OLED', 350, 'Nintendo Switch OLED 7" Handheld Gaming Console', 'switch_oled.jpg', 'Nintendo gaming consoles'),
(10, '6', '4', 'PlayStation 5 Digital Edition', 400, 'Sony PlayStation 5 Digital Edition Gaming Console', 'ps5_digital.jpg', 'Sony gaming consoles'),
(11, '5', '8', 'HP Spectre x360', 1200, 'HP Spectre x360 13.3" 4K Touchscreen Laptop', 'hp_spectre.jpg', 'HP laptops'),
(12, '5', '11', 'Lenovo ThinkPad X1 Carbon', 1500, 'Lenovo ThinkPad X1 Carbon 14" Laptop', 'thinkpad.jpg', 'Lenovo laptops'),
(13, '3', '6', 'Garmin Fenix 6', 600, 'Garmin Fenix 6 Multisport GPS Smartwatch', 'garmin_fenix6.jpg', 'Garmin smartwatches'),
(14, '3', '7', 'Fitbit Versa 3', 250, 'Fitbit Versa 3 Health & Fitness Smartwatch', 'fitbit_versa3.jpg', 'Fitbit smartwatches'),
(15, '4', '7', 'Anki Vector', 250, 'Anki Vector Home Robot Assistant', 'anki_vector.jpg', 'Anki robots'),
(16, '1', '12', 'Samsung QN900A', 3000, 'Samsung QN900A 8K Neo QLED Smart TV', 'samsung_qn900a.jpg', 'Samsung televisions'),
(17, '2', '7', 'Xiaomi Redmi Note 10 Pro', 300, 'Xiaomi Redmi Note 10 Pro 128GB Smartphone', 'redmi_note10pro.jpg', 'Xiaomi smartphones'),
(18, '5', '9', 'ASUS ROG Zephyrus G14', 1800, 'ASUS ROG Zephyrus G14 14" Gaming Laptop', 'asus_rog_g14.jpg', 'ASUS gaming laptops'),
(19, '6', '13', 'Xbox Series S', 300, 'Microsoft Xbox Series S Gaming Console', 'xbox_series_s.jpg', 'Microsoft gaming consoles'),
(20, '3', '3', 'Apple Watch Series 7', 400, 'Apple Watch Series 7 GPS Smartwatch', 'apple_watch7.jpg', 'Apple smartwatches');

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
  `mobile` varchar(9) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Marcos', 'Dieguez', 'marcosxp.ma@gmail.com', '3814d460c26c2dbab2d80294d2cc9882', '832456754', 'Calle Mallorca 123', 'Palma 1234'),
(2, 'Jose', 'Lopez', 'jlopez@gmail.com', '6cebe3b43c4495fdf87fcaa43b485236', '987654675', 'Calle Ibiza 54', 'Rozas 23');

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

