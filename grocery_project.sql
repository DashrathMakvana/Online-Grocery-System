-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2021 at 01:07 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admindata`
--

CREATE TABLE `admindata` (
  `adminemail` varchar(50) NOT NULL,
  `adminpass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admindata`
--

INSERT INTO `admindata` (`adminemail`, `adminpass`) VALUES
('grocerry.admin@gmail.com', 'Gc#Admin93'),
('admin@gmai.com', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cId` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `Quantity` varchar(11) NOT NULL,
  `cprice` varchar(10) NOT NULL,
  `total` varchar(20) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `number` text DEFAULT NULL,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `transactionID` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `orderDateTime` date NOT NULL DEFAULT current_timestamp(),
  `DelevryDate` text DEFAULT NULL,
  `delevryboyname` varchar(50) DEFAULT NULL,
  `OrderId` text DEFAULT NULL,
  `delivered` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cId`, `email`, `product_id`, `Quantity`, `cprice`, `total`, `address`, `city`, `state`, `country`, `number`, `paymentMethod`, `transactionID`, `status`, `orderDateTime`, `DelevryDate`, `delevryboyname`, `OrderId`, `delivered`) VALUES
(140, 'makvanadashrathb@gmail.com', '53', '1', '149', '149', 'jasdan', 'jasdan', 'Rajkot', 'India', '873312231', 'Cash on delivery(COD)', '', 'Order Delivered', '2021-04-01', '2021-04-01 07:18 PM', 'rohan', '217086', 'complete'),
(141, 'makvanadashrathb@gmail.com', '52', '1', '560', '560', 'jasdan', 'jasdan', 'Rajkot', 'India', '873312231', 'Cash on delivery(COD)', '', 'Order Delivered', '2021-04-01', '2021-04-01 07:18 PM', 'rohan', '217086', 'complete'),
(142, 'makvanadashrathb@gmail.com', '58', '2', '50', '100', 'jasdan', 'vinchiya', 'Rajkot', 'India', '873312231', 'Cash on delivery(COD)', '', 'Order Delivered', '2021-04-04', '2021-04-05 12:18 AM', 'rohan', '446689', 'complete'),
(144, 'jaydeep@gmail.com', '52', '1', '560', '560', 'jasdan,rajkot 360050', 'jasdan', 'Rajkot', 'India', '1256161656', 'Cash on delivery(COD)', '', 'processing', '2021-04-13', '2021-04-13 08:17 PM', 'mohan', '460218', NULL),
(153, 'jaydeep12@gmail.com', '53', '2', '149', '298', 'jasdan,rajkot 360050', 'jasdan', 'Rajkot', 'India', '1234567890', 'Cash on delivery(COD)', '', 'Order Cancel', '2021-04-14', '2021-04-14 03:03 PM', 'milan', '667561', NULL),
(157, 'makvanadashrathb@gmail.com', '54', '1', '111', '111', 'jasdan', 'jasdan', 'Rajkot', 'India', '873312231', 'Cash on delivery(COD)', '', 'Order Delivered', '2021-04-14', '2021-04-14 04:15 PM', 'rohan', '895721', 'complete');

-- --------------------------------------------------------

--
-- Table structure for table `delevryboy_data`
--

CREATE TABLE `delevryboy_data` (
  `delevryboyid` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` text NOT NULL,
  `address` varchar(30) NOT NULL,
  `sequrityQuation` text NOT NULL,
  `answer` varchar(30) NOT NULL,
  `Avalible` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delevryboy_data`
--

INSERT INTO `delevryboy_data` (`delevryboyid`, `Name`, `password`, `email`, `number`, `address`, `sequrityQuation`, `answer`, `Avalible`) VALUES
(2, 'rohan', '123', 'rohan12@gmail.com', '7634522358', 'jasdan', 'What is your favorite smartphone?', 'mi', 'yes'),
(5, 'jaydeep', '1', 'jaydeep@gmail.com', '1234567891', 'jasdan', 'What is your favourite colour?', 'red', 'Yes'),
(6, 'milan', '1', 'milan@gmail.com', '1235343434', 'jasdan', 'What is your favourite colour?', 'green', 'yes'),
(7, 'vishal', '1', 'vishal@gmail.com', '7438385393', 'jasdan', 'What is your favorite smartphone?', 'SAMSUNG', 'yes'),
(8, 'jagdish', '1', 'jagdish@gmail.com', '7349509234', 'rajkoj', 'What is your favourite colour?', 'red', 'yes'),
(9, 'sandeep', '1', 'sandeep@gmail.com', '8465421358', 'rajkoj', 'What is your favourite colour?', 'green', 'yes'),
(10, 'ravi', '1', 'ravi@gmail.com', '5421365214', 'jasdan', 'What is your favourite colour?', 'green', 'yes'),
(11, 'manoj sahu', '1', 'manoj@gmail.com', '1254632154', 'jasdan', 'What is your favourite colour?', 'red', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `deliverycharge`
--

CREATE TABLE `deliverycharge` (
  `id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `charge` text DEFAULT NULL,
  `product_id` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `deliverboyname` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deliverycharge`
--

INSERT INTO `deliverycharge` (`id`, `email`, `charge`, `product_id`, `status`, `deliverboyname`) VALUES
(27, 'makvanadashrathb@gmail.com', '100', '51', 'continue', 'rohan'),
(28, 'makvanadashrathb@gmail.com', '200', '52', 'continue', 'rohan'),
(29, 'makvanadashrathb@gmail.com', '200', '51', 'continue', 'rohan'),
(30, 'makvanadashrathb@gmail.com', '100', '54', 'continue', 'rohan'),
(31, 'ram@gmail.com', '200', '54', 'continue', 'mohan'),
(32, 'ram@gmail.com', '200', '56', 'continue', 'mohan'),
(33, 'makvanadashrathb@gmail.com', '100', '57', 'continue', 'rohan'),
(34, 'makvanadashrathb@gmail.com', '100', '60', 'continue', 'rohan'),
(35, 'mahesh@gmail.com', '100', '52', 'continue', 'rohan'),
(36, 'mahesh@gmail.com', '100', '56', 'continue', 'mohan'),
(37, 'mahesh@gmail.com', '200', '53', 'continue', 'rohan'),
(38, 'mahesh@gmail.com', '200', '54', 'continue', 'rohan'),
(39, 'mahesh@gmail.com', '200', '59', 'continue', 'rohan'),
(40, 'mahesh@gmail.com', '100', '66', 'continue', 'rohan'),
(41, 'mahesh@gmail.com', '100', '58', 'continue', 'rohan'),
(42, 'mahesh@gmail.com', '100', '52', 'continue', 'mohan'),
(43, 'mahesh@gmail.com', '100', '53', 'continue', 'mohan'),
(44, 'mahesh@gmail.com', '100', '65', 'continue', 'mohan'),
(45, 'makvanadashrathb@gmail.com', '100', '52', 'continue', 'rohan'),
(46, 'makvanadashrathb@gmail.com', '100', '53', 'continue', 'mohan'),
(47, 'makvanadashrathb@gmail.com', '100', '54', 'continue', 'rohan'),
(48, 'makvanadashrathb@gmail.com', '100', '56', 'continue', 'rohan'),
(49, 'makvanadashrathb@gmail.com', '100', '58', 'continue', 'rohan'),
(50, 'makvanadashrathb@gmail.com', '100', '65', 'continue', 'rohan'),
(51, 'makvanadashrathb@gmail.com', '100', '59', 'continue', 'rohan'),
(52, 'makvanadashrathb@gmail.com', '100', '69', 'continue', 'jaydeep'),
(53, 'makvanadashrathb@gmail.com', '100', '52', 'continue', 'ravi'),
(54, 'makvanadashrathb@gmail.com', '100', '54', 'continue', 'rohan'),
(55, 'makvanadashrathb@gmail.com', '100', '53', 'continue', 'rohan'),
(56, 'makvanadashrathb@gmail.com', '100', '55', 'continue', 'rohan'),
(57, 'makvanadashrathb@gmail.com', '100', '64', 'continue', 'rohan'),
(58, 'makvanadashrathb@gmail.com', '100', '58', 'continue', 'rohan'),
(59, 'makvanadashrathb@gmail.com', '100', '60', 'continue', 'rohan'),
(60, 'makvanadashrathb@gmail.com', '100', '59', 'continue', 'rohan'),
(61, 'makvanadashrathb@gmail.com', '100', '60', 'continue', 'rohan'),
(62, 'makvanadashrathb@gmail.com', '100', '53', 'continue', 'rohan'),
(63, 'makvanadashrathb@gmail.com', '100', '52', 'continue', 'rohan'),
(64, 'makvanadashrathb@gmail.com', '100', '53', 'continue', 'rohan'),
(65, 'makvanadashrathb@gmail.com', '100', '55', 'continue', 'rohan'),
(66, 'makvanadashrathb@gmail.com', '100', '56', 'continue', 'rohan'),
(67, 'makvanadashrathb@gmail.com', '100', '53', 'continue', 'rohan'),
(68, 'makvanadashrathb@gmail.com', '100', '60', 'continue', 'rohan'),
(69, 'makvanadashrathb@gmail.com', '100', '66', 'continue', 'rohan'),
(70, 'makvanadashrathb@gmail.com', '100', '65', 'continue', 'rohan'),
(71, 'makvanadashrathb@gmail.com', '100', '57', 'continue', 'rohan'),
(72, 'makvanadashrathb@gmail.com', '100', '71', 'continue', 'rohan'),
(73, 'makvanadashrathb@gmail.com', '100', '53', 'continue', 'mohan'),
(74, 'makvanadashrathb@gmail.com', '100', '52', 'continue', 'mohan'),
(75, 'makvanadashrathb@gmail.com', '100', '58', 'continue', 'rohan'),
(76, 'makvanadashrathb@gmail.com', '100', '71', 'continue', 'rohan'),
(77, 'jaydeep@gmail.com', '100', '52', 'continue', 'rohan'),
(78, 'makvanadashrathb@gmail.com', '100', '56', 'continue', 'rohan'),
(79, 'makvanadashrathb@gmail.com', '100', '60', 'continue', 'rohan'),
(80, 'makvanadashrathb@gmail.com', '100', '57', 'continue', 'rohan'),
(81, 'jaydeep12@gmail.com', '100', '53', 'continue', 'milan'),
(82, 'jaydeep12@gmail.com', '100', '56', 'continue', 'milan'),
(83, 'jaydeep12@gmail.com', '100', '52', 'continue', 'mohan'),
(84, 'jaydeep12@gmail.com', '100', '53', 'continue', 'mohan'),
(85, 'jaydeep12@gmail.com', '100', '52', 'continue', 'mohan'),
(86, 'jaydeep12@gmail.com', '100', '53', 'continue', 'rohan'),
(87, 'jaydeep12@gmail.com', '100', '54', 'continue', 'rohan'),
(88, 'makvanadashrathb@gmail.com', '100', '58', 'continue', 'rohan'),
(89, 'makvanadashrathb@gmail.com', '100', '57', 'continue', 'rohan'),
(90, 'makvanadashrathb@gmail.com', '100', '54', 'continue', 'rohan');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `feedback` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `feedback`, `email`, `name`) VALUES
(2, 'Good Service', 'makvanadashrathb@gmail.com', 'rohan'),
(3, 'bad', 'mahesh@gmail.com', 'rohan'),
(4, 'Good Service', 'makvanadashrathb@gmail.com', 'ravi');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Id` int(11) NOT NULL,
  `PName` varchar(50) NOT NULL,
  `Price` text NOT NULL,
  `category` varchar(50) NOT NULL,
  `active` text NOT NULL,
  `shopname` varchar(50) NOT NULL,
  `images` varchar(50) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `shopaddress` varchar(100) DEFAULT NULL,
  `Quantity` text NOT NULL,
  `about` varchar(100) NOT NULL,
  `tquantity` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Id`, `PName`, `Price`, `category`, `active`, `shopname`, `images`, `emailid`, `shopaddress`, `Quantity`, `about`, `tquantity`) VALUES
(52, 'Kaju katli', '410', 'Sweets', 'Yes', 'Mahalaxmi Sweet ', 'Kaju Katli.jpg', 'Abhijeet@gmail.com', 'shop 9 , chitrakut shopping centre , paswnath ta won ship road ,rajkot', '500g', ' Kaju Katli (Katri | Barfi) 500g | Reusable Pet Container', '10kg'),
(53, 'Apple', '149', 'Fruits', 'Yes', 'Novelty  Fruit', 'Apple Seeds.PNG', 'aditya@gmail.com', '101, Purohit House, Sardar Patel Stadium Rd, opp. Sports Club,Rajkot', '1 kg', 'This is a Vegetarian product. The Fiber composition in Green Apples helps in Digestion', '20 kg'),
(54, 'Khaman', '111', 'farsan', 'Yes', 'Bhavnagari Farsan House', 'khaman.jpg', 'amitava@gmai.com', 'Patasa Pole, Gandhi Rd, opposite Jain Temple,Rajkot', '1 kg', 'Khaman is made from freshly ground channa daal or channa gram flour.', '10kg'),
(55, 'Cumin', '110', 'General Store', 'Yes', 'Bhavesh Provision Stores', 'cumin.jpg', 'arjun@gmai.com', ' V S Hospital Campus, Old Dalia Building, Ellisbridge,Rajkot', '1 kg', 'Jeera - Cumin Seeds', '20 kg'),
(56, 'Rice', '25', 'Kariyana Products', 'Yes', 'Ganesh Kirana Stores', 'Rice.jpg', 'ganesh@gmail.com', ' Shahpur Bhai Centre, Shahpur Rd, near Jain Temple, Rajkot', '1 kg', 'Perfectly aged for 24 months, Ideal for special occasions, Enticing aroma', '10 kg'),
(57, 'Wheat', '20', 'Kariyana Products', 'Yes', 'Ganesh Kirana Stores', 'Wheat.jpg', 'ganesh@gmail.com', ' Shahpur Bhai Centre, Shahpur Rd, near Jain Temple, Rajkot', '1 kg', 'Organic Whole Wheat. Eat Natural Live Healthy.', '30 kg'),
(58, 'pigeon peas', '50', ' Kariyana Products', 'Yes', 'Ganesh Kirana Stores', 'Pigeon peas.jpg', 'ganesh@gmail.com', ' Shahpur Bhai Centre, Shahpur Rd, near Jain Temple, Rajkot', '1 kg', 'Organic Wholepigeon peas. Eat Natural Live Healthy.', '10kg'),
(59, 'Gulab jamun', '320', ' Sweets', 'Yes', 'Mahalaxmi Sweet ', 'gulab jamun.jpg', 'Abhijeet@gmail.com', 'shop 9 , chitrakut shopping centre , paswnath ta won ship road ,rajkot', '1 kg', 'NO ADDED PRESERVATIVES, NO ADDED ARTIFICAL FLAVOURS, NO ADDED ARTIFICIAL COLOURS.', '10kg'),
(60, 'Jalebi', '65', 'Sweets', 'Yes', 'Mahalaxmi Sweet ', 'jalebi.jpg', 'Abhijeet@gmail.com', 'shop 9 , chitrakut shopping centre , paswnath ta won ship road ,rajkot', '1 kg', 'Jilebi | Jalebi dessert can be served warm or cold.', '5 kg'),
(64, 'Salt', '20', 'Kariyana Products', 'Yes', 'Harshan Kirana Stores', 'salt.jpg', 'harshan@gmail.com', 'Old Dalia Building, Ellisbridge,Rajkot', '1 kg', 'This is a Vegetarian product, mental development of children', '10 kg'),
(65, 'Kaju katli', '499', 'Sweets', 'Yes', 'Kolkata Sweets', 'kaju-barfi.jpg', 'rajumehta12@gmail.com', 'Shahpur Rd, near Jain Temple, Rajkot', '1 kg', '100% Veg, Indian Sweet', '10 kg'),
(66, 'Mango', '70', 'Fruits', 'Yes', 'Novelty  Fruit', 'mango.jpg', 'aditya@gmail.com', '101, Purohit House, Sardar Patel Stadium Rd, opp. Sports Club,Rajkot', '1 kg', 'Healthy Plants Potted in Organic Medium', '10 kg'),
(69, 'Chakri', '50', 'farsan', 'Yes', 'Bhavnagari Farsan House', 'chakari.jpg', 'amitava@gmai.com', 'Patasa Pole, Gandhi Rd, opposite Jain Temple,Rajkot', '1 kg', 'fresh chakari', '10 kg'),
(71, 'Fafda', '30', ' farsan', 'Yes', 'Bhavnagari Farsan House', 'fafda.jpg', 'amitava@gmai.com', 'Patasa Pole, Gandhi Rd, opposite Jain Temple,Rajkot', '100g', 'Very tasty and soft fafda , Tangy imli chutney free with this pack.', '2 kg'),
(72, 'Kaju katli', '444', 'Sweets', 'Yes', 'Raja Sweets', 'Capture.PNG', 'raja@gmail.com', ' Shahpur Rd, near Jain Temple, Rajkot', '500g', 'This is a Vegetarian product. Mesmerizing taste', '5 kg'),
(73, 'cooking oil', '2230', 'Kariyana Products', 'Yes', 'd kariyana', 'Tirupati oil.jpg', 'sandeep@gmail.com', '101, Purohit House, Sardar Patel Stadium Rd, opp. Sports Club,Rajkot', '15 litter', 'this product use in cooking', '50 ');

-- --------------------------------------------------------

--
-- Table structure for table `productsellerdata`
--

CREATE TABLE `productsellerdata` (
  `sid` int(11) NOT NULL,
  `sname` text NOT NULL,
  `spassword` varchar(60) NOT NULL,
  `semail` varchar(50) NOT NULL,
  `snumber` text NOT NULL,
  `saddress` varchar(100) NOT NULL,
  `ssequrityQuation` text NOT NULL,
  `sanswer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productsellerdata`
--

INSERT INTO `productsellerdata` (`sid`, `sname`, `spassword`, `semail`, `snumber`, `saddress`, `ssequrityQuation`, `sanswer`) VALUES
(13, 'Ganesh Shahu', '1', 'ganesh@gmail.com', '1252164651', 'rajkot', 'What is your favourite colour?', 'Green'),
(14, 'Abhijeet Chanal', '1', 'Abhijeet@gmail.com', '1524135121', 'rajkot', 'What is your favorite smartphone?', 'apple'),
(15, 'Aditya Pasi', '1', 'aditya@gmail.com', '1524648762', 'rajkot', 'What is your favourite colour?', 'Red'),
(16, 'Amitava Sansoi', '1', 'amitava@gmai.com', '1546231564', 'rajkot', 'What is your favorite smartphone?', 'Samsung'),
(17, 'Arjun Bhanjra', '1', 'arjun@gmai.com', '1252164651', 'rajkot', 'What is your favorite smartphone?', 'OPPO'),
(18, 'Harsan Jadeja', '1', 'harshan@gmail.com', '1546231564', 'rajkot', 'What is your favorite smartphone?', 'Samsung'),
(19, 'Raju mehta', '1', 'rajumehta12@gmail.com', '1546231564', 'rajkot', 'What is your favorite smartphone?', 'oppo'),
(20, 'raja', '1', 'raja@gmail.com', '1231556446', 'rajkot', 'What is your favorite smartphone?', 'oppo'),
(21, 'roham', '1', 'rohan123@gmail.com', '1234567890', 'rajkot', 'What is your favorite smartphone?', 'oppo');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `Id` int(50) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `number` text NOT NULL,
  `address` varchar(30) NOT NULL,
  `sequrityQuation` varchar(50) NOT NULL,
  `answer` varchar(25) NOT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `OrderId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`Id`, `name`, `password`, `email`, `number`, `address`, `sequrityQuation`, `answer`, `city`, `state`, `country`, `OrderId`) VALUES
(26, 'Dashrath makvana', '1', 'makvanadashrathb@gmail.com', '873312231', 'jasdan', 'What is your favorite smartphone?', 'mi', 'jasdan', 'Rajkot', 'India', '895721'),
(28, 'darshan', '123', 'darshan@gmail.com', '123456789', 'jasdan', 'What is your favorite smartphone?', '1plus', 'vinchiya', 'ahemdbad', 'India', NULL),
(31, 'Mahesh', '1', 'mahesh@gmail.com', '1235522131', 'jasdan', 'What is your favourite colour?', 'red', 'jasdan', 'Rajkot', 'India', '912072'),
(32, 'jaydeep rathod', 'jaydeep@123', 'jaydeep@gmail.com', '1256161656', 'jasdan,rajkot 360050', 'What is your favourite colour?', 'Green', 'jasdan', 'Rajkot', 'India', '460218'),
(33, 'sanjay', '1', 's@gmail.com', '4561234546', 'Rajkot', 'What is your favourite colour?', 'green', NULL, NULL, NULL, NULL),
(34, 'raju', '1', 'raju1232@gmail.com', '1234567890', 'Rajkot', 'What is your favourite colour?', 'green', NULL, NULL, NULL, NULL),
(35, 'jaydeep makvana', '11', 'jaydeep12@gmail.com', '1234567890', 'jasdan,rajkot 360050', 'What is your favourite colour?', 'green', 'jasdan', 'Rajkot', 'India', '667561');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cId`);

--
-- Indexes for table `delevryboy_data`
--
ALTER TABLE `delevryboy_data`
  ADD PRIMARY KEY (`delevryboyid`);

--
-- Indexes for table `deliverycharge`
--
ALTER TABLE `deliverycharge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `productsellerdata`
--
ALTER TABLE `productsellerdata`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `delevryboy_data`
--
ALTER TABLE `delevryboy_data`
  MODIFY `delevryboyid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `deliverycharge`
--
ALTER TABLE `deliverycharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `productsellerdata`
--
ALTER TABLE `productsellerdata`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
