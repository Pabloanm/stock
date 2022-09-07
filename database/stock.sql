-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2021 at 04:39 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `active`) VALUES
(5, 'Color', 1),
(6, 'Talle', 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value`
--

CREATE TABLE `attribute_value` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `attribute_parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `value`, `attribute_parent_id`) VALUES
(5, 'Blue', 2),
(6, 'White', 2),
(7, 'M', 3),
(8, 'L', 3),
(9, 'Green', 2),
(10, 'Black', 2),
(12, 'Grey', 2),
(13, 'S', 3),
(14, 'Blanco', 4),
(15, 'Verde', 4),
(16, 'Blanco', 5),
(17, 'Negro', 5),
(18, 'Verde', 5),
(19, 'XXL', 6),
(20, 'XL', 6),
(21, 'L', 6),
(22, 'M', 6),
(23, 'S', 6),
(24, 'XS', 6),
(25, 'XXS', 6);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `active`) VALUES
(1, 'CAMILLA-I', 1),
(2, 'G.E.M. VERANO', 1),
(3, 'GRACY VERANO - SUPER BELLE', 1),
(4, 'SHILO', 1),
(5, 'COLETTE', 1),
(6, 'GRACY INVIERNO - MG', 1),
(7, 'CARLA FASHION', 1),
(8, 'MOEWY', 1),
(9, 'MISS CARLA', 1),
(10, '', 1),
(11, 'LIVANS', 1),
(12, '?', 1),
(13, 'GISELLE', 1),
(14, 'MG - INVIERNO', 1),
(15, 'CARLA FASHION - INVIERNO', 1),
(16, 'LW - INVIERNO', 1),
(17, 'MISS CARLA - INVIERNO', 1),
(18, 'CAMISAS FENDI', 1),
(19, 'MAEWE - INVIERNO', 1),
(20, 'SUPERBELLE - VERANO', 1),
(21, 'SHILO - VERANO', 1),
(22, 'COLETTE - VERANO', 1),
(23, 'BLUOLTRE - VERANO', 1),
(24, 'X-MAX - INVIERNO', 1),
(25, 'MAOWY - INVIERNO', 1),
(26, 'KENSSY & DY - INVIERNO', 1),
(27, 'MOMENT - INVIERNO', 1),
(28, 'SWEATERS DE GORDA - INVIERNO', 1),
(29, 'ATTRAIT CAMPERAS - INVIERNO', 1),
(30, 'SEE MOD', 1),
(31, 'CARLA GIANINI', 1),
(32, 'GRACY', 1),
(33, 'TRICOTONIC', 1),
(34, 'JH', 1),
(35, 'LINA MODA', 1),
(36, 'MG', 1),
(37, 'G.E.M.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `active`) VALUES
(4, 'Categoria Prueba', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `service_charge_value` varchar(255) NOT NULL,
  `vat_charge_value` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'Andrea  Brigante', '0', '0', 'Concepción Arenal 3425 piso 3 oficina 43', '4554-3885', 'Argentina', 'hello everyone one this is my store', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `vat_number` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_name`, `customer_address`, `customer_phone`, `vat_number`, `phone`, `country`, `state`, `city`, `message`) VALUES
(1, 'Pablo Núñez', 'Migueletes 597', '54 11 6569 0856', '20 29801830 7', '11 6569 0856', 'Argentina', 'Buenos Aires', 'CABA', 'Hola yo soy Pablo, esta es una prueba'),
(2, 'Maria Agustina Medel', 'Migueletes 597', '4771 9142', '20 23231331312312 333', '11 6565 4546', 'Argentina', 'Buenos Aires', 'Capital Federal', 'Esta es una prueba de texto para cliente Agustina');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Administrator', 'a:40:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createBrand\";i:9;s:11:\"updateBrand\";i:10;s:9:\"viewBrand\";i:11;s:11:\"deleteBrand\";i:12;s:14:\"createCategory\";i:13;s:14:\"updateCategory\";i:14;s:12:\"viewCategory\";i:15;s:14:\"deleteCategory\";i:16;s:14:\"createCustomer\";i:17;s:14:\"updateCustomer\";i:18;s:12:\"viewCustomer\";i:19;s:14:\"deleteCustomer\";i:20;s:11:\"createStore\";i:21;s:11:\"updateStore\";i:22;s:9:\"viewStore\";i:23;s:11:\"deleteStore\";i:24;s:15:\"createAttribute\";i:25;s:15:\"updateAttribute\";i:26;s:13:\"viewAttribute\";i:27;s:15:\"deleteAttribute\";i:28;s:13:\"createProduct\";i:29;s:13:\"updateProduct\";i:30;s:11:\"viewProduct\";i:31;s:13:\"deleteProduct\";i:32;s:11:\"createOrder\";i:33;s:11:\"updateOrder\";i:34;s:9:\"viewOrder\";i:35;s:11:\"deleteOrder\";i:36;s:11:\"viewReports\";i:37;s:13:\"updateCompany\";i:38;s:11:\"viewProfile\";i:39;s:13:\"updateSetting\";}'),
(4, 'SuperUsuario', 'a:40:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createBrand\";i:9;s:11:\"updateBrand\";i:10;s:9:\"viewBrand\";i:11;s:11:\"deleteBrand\";i:12;s:14:\"createCategory\";i:13;s:14:\"updateCategory\";i:14;s:12:\"viewCategory\";i:15;s:14:\"deleteCategory\";i:16;s:14:\"createCustomer\";i:17;s:14:\"updateCustomer\";i:18;s:12:\"viewCustomer\";i:19;s:14:\"deleteCustomer\";i:20;s:11:\"createStore\";i:21;s:11:\"updateStore\";i:22;s:9:\"viewStore\";i:23;s:11:\"deleteStore\";i:24;s:15:\"createAttribute\";i:25;s:15:\"updateAttribute\";i:26;s:13:\"viewAttribute\";i:27;s:15:\"deleteAttribute\";i:28;s:13:\"createProduct\";i:29;s:13:\"updateProduct\";i:30;s:11:\"viewProduct\";i:31;s:13:\"deleteProduct\";i:32;s:11:\"createOrder\";i:33;s:11:\"updateOrder\";i:34;s:9:\"viewOrder\";i:35;s:11:\"deleteOrder\";i:36;s:11:\"viewReports\";i:37;s:13:\"updateCompany\";i:38;s:11:\"viewProfile\";i:39;s:13:\"updateSetting\";}'),
(5, 'Cliente', 'a:5:{i:0;s:11:\"viewProduct\";i:1;s:11:\"createOrder\";i:2;s:11:\"updateOrder\";i:3;s:9:\"viewOrder\";i:4;s:11:\"deleteOrder\";}');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `bill_no`, `customer_name`, `customer_address`, `customer_phone`, `date_time`, `gross_amount`, `service_charge_rate`, `service_charge`, `vat_charge_rate`, `vat_charge`, `net_amount`, `discount`, `paid_status`, `user_id`, `CustomerID`) VALUES
(11, 'BILPR-13A4', '', '', '', '1615261929', '150.00', '0', '0', '0', '0', '100.00', '50', 2, 1, 0),
(12, 'BILPR-E52B', 'Roberto Gomez', 'Austria 1200', '', '1615355021', '89.00', '0', '0', '0', '0', '89.00', '', 2, 1, 0),
(13, 'BILPR-D5E4', '', '', '', '1615414596', '40.50', '0', '0', '0', '0', '40.50', '', 2, 1, 0),
(14, 'BILPR-6215', '', '', '', '1615423883', '400.00', '0', '0', '0', '0', '300.00', '100', 1, 1, 0),
(15, 'BILPR-6450', 'Esta es una prueba', '', '', '1615425297', '44.50', '0', '0', '0', '0', '44.50', '', 2, 1, 0),
(16, 'BILPR-198B', '', '', '', '1615425586', '11.00', '0', '0', '0', '0', '11.00', '', 2, 1, 0),
(17, 'BILPR-C7D6', 'Agustina Medel', 'Migueletes 597', '', '1615426430', '784.40', '0', '0', '0', '0', '784.40', '', 2, 1, 0),
(18, 'BILPR-28D4', '', '', '', '1615431803', '11.00', '0', '0', '0', '0', '11.00', '', 2, 1, 0),
(19, 'REMITO-DF07', '', '', '', '1615433651', '500.00', '0', '0', '0', '0', '500.00', '', 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders_item`
--

CREATE TABLE `orders_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_item`
--

INSERT INTO `orders_item` (`id`, `order_id`, `product_id`, `qty`, `rate`, `amount`) VALUES
(36, 13, 347, '2', '13.5', '27.00'),
(37, 13, 347, '1', '13.5', '13.50'),
(41, 12, 305, '1', '13.5', '13.50'),
(42, 12, 301, '5', '13', '65.00'),
(43, 12, 313, '1', '10.5', '10.50'),
(46, 11, 5, '3', '50', '150.00'),
(55, 15, 358, '1', '11', '11.00'),
(56, 15, 352, '1', '13.5', '13.50'),
(57, 15, 349, '1', '11.5', '11.50'),
(58, 15, 343, '1', '8.5', '8.50'),
(62, 16, 356, '1', '11', '11.00'),
(63, 17, 32, '8', '11.8', '94.40'),
(64, 17, 214, '50', '13.8', '690.00'),
(65, 14, 154, '15', '15', '225.00'),
(66, 14, 280, '5', '13', '65.00'),
(67, 14, 187, '10', '11', '110.00'),
(68, 18, 358, '1', '11', '11.00'),
(69, 19, 321, '50', '10', '500.00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `attribute_value_id` text DEFAULT NULL,
  `brand_id` text NOT NULL,
  `category_id` text NOT NULL,
  `store_id` int(11) NOT NULL,
  `availability` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `price`, `qty`, `image`, `description`, `attribute_value_id`, `brand_id`, `category_id`, `store_id`, `availability`) VALUES
(1, 'GHIACCA', '1466LC', '15.5', '7', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(2, 'GHIACCA', '13831', '17', '15', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(3, 'GHIACCA ANIMAL PRINT', '1491', '17', '20', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(4, 'SWEATER', '8160', '10', '19', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(5, 'PANTALON', '2303', '11.5', '15', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(6, 'PANTALON', '2399', '11.5', '13', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(7, 'GIACCA', '1344', '14', '10', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(8, 'GIACCA', '1461', '15', '27', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(9, 'GIACCA', '1531', '13.5', '21', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(10, 'GIACCA', '13831', '17', '15', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(11, 'GIACCA', '1491', '17', '20', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(12, 'MAGLIE', '8160', '10', '19', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(13, 'CAMISA', '5635', '10', '20', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(14, 'PANTALON', '2440', '11.5', '15', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(15, 'PANTALON', '2437', '10.5', '20', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(16, 'BABUCHAS', '21921', '11', '80', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(17, 'BABUCHAS', '2361', '11', '90', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(18, 'BABUCHAS', '2193', '11', '94', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(19, 'BABUCHAS', '2371', '10', '36', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(20, 'BABUCHAS', '2381', '10.5', '61', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(21, 'GIACCHE', '1344', '13', '14', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(22, 'GIACCA', '1480', '13', '16', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(23, 'GIACCHE', '1491', '15', '12', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(24, 'GIACCHE', '5667', '11', '20', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(25, 'PANTALON', '2458', '11', '15', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(26, 'PANTALON', '2446', '12', '6', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(27, 'PANTALON', '2440', '11.5', '16', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(28, 'ABITI', '6720', '11.5', '12', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(29, 'CAMISA', '5661', '9', '15', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(30, 'GIACCHE', '1609', '11.5', '15', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(31, 'PANTALON', '2457', '11', '15', '', '', 'null', '[\"1\"]', '[\"4\"]', 3, 1),
(32, 'PÀNTALONES DE LINO', '6991L', '11.8', '70', '', '', 'null', '[\"2\"]', '[\"4\"]', 3, 1),
(33, 'SPOLVERINO LINO', '70188', '14', '79', '', '', 'null', '[\"2\"]', '[\"4\"]', 3, 1),
(34, 'SPOLVERINO LINOBOTONES', '197', '14.5', '25', '', '', 'null', '[\"3\"]', '[\"4\"]', 3, 1),
(35, 'VESTIDOS BLANCOS CON NUDO', '14336', '10', '12', '', '', 'null', '[\"4\"]', '[\"4\"]', 3, 1),
(36, 'PANTALONES LINO FLORES', '20208', '8', '8', '', '', 'null', '[\"4\"]', '[\"4\"]', 3, 1),
(37, 'VESTIDO LINO C/BOTON NACAR', '', '13', '24', '', '', 'null', '[\"5\"]', '[\"4\"]', 3, 1),
(38, 'VESTIDO LINO C/CUELLO', '', '14', '17', '', '', 'null', '[\"5\"]', '[\"4\"]', 3, 1),
(39, 'BABUCHAS CORDEROY LEOPARDO', '80358', '11.5', '25', '', '', 'null', '[\"6\"]', '[\"4\"]', 3, 1),
(40, 'BABUCHA CORDEROY FLORES', '61330', '13.8', '55', '', '', 'null', '[\"7\"]', '[\"4\"]', 3, 1),
(41, 'BABUCHAS FLORES', '61010', '13.8', '27', '', '', 'null', '[\"7\"]', '[\"4\"]', 3, 1),
(42, 'BABUCHAS CORDEROY LISO', '60850', '12', '35', '', '', 'null', '[\"7\"]', '[\"4\"]', 3, 1),
(43, 'CAMISAS LW', '83205', '14.8', '16', '', '', 'null', '[\"7\"]', '[\"4\"]', 3, 1),
(44, 'CAMISAS BURBERRY', '9853', '10.8', '13', '', '', 'null', '[\"7\"]', '[\"4\"]', 3, 1),
(45, 'SWEATERS ESTRELLA', '7129', '12.8', '50', '', '', 'null', '[\"7\"]', '[\"4\"]', 3, 1),
(46, 'CAMPERAS TIPO FENDI CON CIERRE', 'M9102', '13.5', '12', '', '', 'null', '[\"8\"]', '[\"4\"]', 3, 1),
(47, 'CAMISAS CON CORAZON STRASS', '28416', '11.8', '15', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(48, 'REMERAS LANITA ESTRELLA', '1901', '13.8', '35', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(49, 'REMERAS BLANCAS CON LUNARES', '8181', '9.8', '4', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(50, 'SPOLVERINOS CON LOGO', '', '16.8', '19', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(51, 'TAPADOS REVERSIBLES CON LEOPARD', '7755', '23.8', '10', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(52, 'REMERA', '80091', '8.8', '53', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(53, 'REMERA', '6258', '7.8', '89', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(54, 'REMERA CON ESTRELLA EN EL MEDIO', '80231', '8.5', '79', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(55, 'REMERA', '80376', '10', '30', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(56, 'REMERA', '10167', '8.8', '41', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(57, 'BABUCHA', '80233', '10.5', '45', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(58, 'BABUCHA', '6095', '10.2', '27', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(59, 'BABUCHA', '6961', '13', '78', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(60, 'spolverino leopardo', '80165', '15', '48', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(61, 'spolverino leopardo', '80264', '10.3', '17', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(62, 'BABUCHA', 'DH20-HN003', '10.5', '16', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(63, 'BABUCHA', '80381', '10.5', '24', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(64, 'REMERA', '6354', '11.5', '29', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(65, 'CAMISA', '80214', '8.5', '40', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(66, 'REMERA corazon en el medio', 'Hn003', '10.5', '71', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(67, 'REMERA escrito', 'HN003', '9.5', '83', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(68, 'REMERA', '80368', '12.8', '25', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(69, 'CAMISA BLU JEANS', '80400', '11.5', '10', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(70, '8', 'HN002DVD', '10.5', '47', '', '', 'null', '[\"50\"]', '[\"4\"]', 3, 1),
(71, 'CAMISA AZUL', '80523', '11', '53', '', '', 'null', '[\"50\"]', '[\"4\"]', 3, 1),
(72, 'remera con estampa plateada', '80520', '9.8', '20', '', '', 'null', '[\"50\"]', '[\"4\"]', 3, 1),
(73, 'SWEATER ANIMAL PRINT AZUL', '80515', '8.5', '45', '', '', 'null', '[\"50\"]', '[\"4\"]', 3, 1),
(74, 'SWEATER', '8005', '10.5', '40', '', '', 'null', '[\"11\"]', '[\"4\"]', 3, 1),
(75, 'REMERA FLOREADA CON CALABERA', '61007', '10.5', '10', '', '', 'null', '[\"11\"]', '[\"4\"]', 3, 1),
(76, 'CAMISA CORDEROY FLORES', '60761', '10.5', '60', '', '', 'null', '[\"11\"]', '[\"4\"]', 3, 1),
(77, 'CAMISA CORDEROY', '61850', '12', '15', '', '', 'null', '[\"11\"]', '[\"4\"]', 3, 1),
(78, 'SWEATER CON DOS ESTRELLAS', '61590', '10', '96', '', '', 'null', '[\"11\"]', '[\"4\"]', 3, 1),
(79, 'SWEATER CON ESTRELLA EN EL MEDIO', '8006', '9.8', '68', '', '', 'null', '[\"11\"]', '[\"4\"]', 3, 1),
(80, 'SPOLVERINO C/ ESTRELLA EN ESPALDA', '70387', '14', '80', '', '', 'null', '[\"12\"]', '[\"4\"]', 3, 1),
(81, 'BABUCHAS', '6175', '11.2', '105', '', '', 'null', '[\"12\"]', '[\"4\"]', 3, 1),
(82, 'BABUCHAS', '6175', '11.2', '89', '', '', 'null', '[\"12\"]', '[\"4\"]', 3, 1),
(83, 'BABUCHAS CUERINA', '60310', '12.8', '95', '', '', 'null', '[\"12\"]', '[\"4\"]', 3, 1),
(84, 'BABUCHAS', '6525', '9.5', '80', '', '', 'null', '[\"12\"]', '[\"4\"]', 3, 1),
(85, 'BABUCHAS', '6175', '11.2', '78', '', '', 'null', '[\"12\"]', '[\"4\"]', 3, 1),
(86, 'BABUCHAS', '6175', '10.5', '120', '', '', 'null', '[\"12\"]', '[\"4\"]', 3, 1),
(87, 'TWINSET REMERA BORDADA CON HOJAS Y CAMISA', '7615z', '14', '80', '', '', 'null', '[\"12\"]', '[\"4\"]', 3, 1),
(88, 'REMERA', '80231', '8.5', '111', '', '', 'null', '[\"12\"]', '[\"4\"]', 3, 1),
(89, 'BUZO', '80510', '9', '40', '', '', 'null', '[\"12\"]', '[\"4\"]', 3, 1),
(90, 'PANTALON CON CINTURON JEAN', '6604', '11', '30', '', '', 'null', '[\"12\"]', '[\"4\"]', 3, 1),
(91, 'PANTALON ANCHO JEAN', '80615', '11.3', '30', '', '', 'null', '[\"12\"]', '[\"4\"]', 3, 1),
(92, 'CAMISA LETRAS', '80513', '8.8', '20', '', '', 'null', '[\"12\"]', '[\"4\"]', 3, 1),
(93, 'CAMISA LOVE', '80620', '9.5', '25', '', '', 'null', '[\"12\"]', '[\"4\"]', 3, 1),
(94, 'BUZO CON CIERRE', '50975', '11', '19', '', '', 'null', '[\"13\"]', '[\"4\"]', 3, 1),
(95, 'BIANCO', '9205', '10.5', '31', '', '', 'null', '[\"13\"]', '[\"4\"]', 3, 1),
(96, 'A - BARI', '50987', '12', '26', '', '', 'null', '[\"13\"]', '[\"4\"]', 3, 1),
(97, 'BABUCHA', '50630', '12.5', '20', '', '', 'null', '[\"13\"]', '[\"4\"]', 3, 1),
(98, 'SPOLVERINO C/ CAPUCHA', '50211', '13.5', '19', '', '', 'null', '[\"13\"]', '[\"4\"]', 3, 1),
(99, 'SPOLVERINO', '50339', '15.5', '32', '', '', 'null', '[\"13\"]', '[\"4\"]', 3, 1),
(100, 'BIANCO', '50929', '14', '36', '', '', 'null', '[\"13\"]', '[\"4\"]', 3, 1),
(101, 'BIANCO', '50895', '11.5', '12', '', '', 'null', '[\"13\"]', '[\"4\"]', 3, 1),
(102, 'CAMPERA CON CIERRE', '50935', '13.5', '24', '', '', 'null', '[\"13\"]', '[\"4\"]', 3, 1),
(103, 'BIANCO', '50921', '10.5', '11', '', '', 'null', '[\"13\"]', '[\"4\"]', 3, 1),
(104, 'BIANCO', '50890 / 58890', '12.5', '48', '', '', 'null', '[\"13\"]', '[\"4\"]', 3, 1),
(105, 'SPOLVERINO LINOBOTONES', '197', '14.5', '25', '', '', 'null', '[\"3\"]', '[\"4\"]', 3, 1),
(106, '11', '14336', '10', '12', '', '', 'null', '[\"4\"]', '[\"4\"]', 3, 1),
(107, 'PANTALONES LINO FLORES', '20208', '8', '8', '', '', 'null', '[\"4\"]', '[\"4\"]', 3, 1),
(108, 'VESTIDO LINO C/BOTON NACAR', '', '13', '24', '', '', 'null', '[\"5\"]', '[\"4\"]', 3, 1),
(109, 'VESTIDO LINO C/CUELLO', '', '14', '17', '', '', 'null', '[\"5\"]', '[\"4\"]', 3, 1),
(110, 'BABUCHAS CORDEROY LEOPARDO', '80358', '11.5', '25', '', '', 'null', '[\"6\"]', '[\"4\"]', 3, 1),
(111, 'BABUCHA CORDEROY FLORES', '61330', '13.8', '55', '', '', 'null', '[\"7\"]', '[\"4\"]', 3, 1),
(112, 'BABUCHAS FLORES', '61010', '13.8', '27', '', '', 'null', '[\"7\"]', '[\"4\"]', 3, 1),
(113, 'BABUCHAS CORDEROY LISO', '60850', '', '35', '', '', 'null', '[\"7\"]', '[\"4\"]', 3, 1),
(114, 'CAMISAS LW', '83205', '14.8', '16', '', '', 'null', '[\"7\"]', '[\"4\"]', 3, 1),
(115, 'CAMISAS BURBERRY', '9853', '10.8', '13', '', '', 'null', '[\"7\"]', '[\"4\"]', 3, 1),
(116, 'SWEATERS ESTRELLA', '7129', '12.8', '50', '', '', 'null', '[\"7\"]', '[\"4\"]', 3, 1),
(117, 'CAMPERAS TIPO FENDI CON CIERRE', 'M9102', '13.5', '12', '', '', 'null', '[\"8\"]', '[\"4\"]', 3, 1),
(118, 'CAMISAS CON CORAZON STRASS', '28416', '11.8', '15', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(119, 'REMERAS LANITA ESTRELLA', '1901', '13.8', '35', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(120, 'REMERAS BLANCAS CON LUNARES', '8181', '9.8', '4', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(121, 'SPOLVERINOS CON LOGO', '60871', '16.8', '19', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(122, 'TAPADOS REVERSIBLES CON LEOPARD', '7755', '23.8', '10', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(123, 'PANT. CORDEROY FINITO . LEOPARDO, GRIS Y CAMEL', '80358', '11.5', '25', '', '', 'null', '[\"14\"]', '[\"4\"]', 3, 1),
(124, 'PANT. CORDEROY FLORES', '61330', '13.8', '55', '', '', 'null', '[\"15\"]', '[\"4\"]', 3, 1),
(125, 'PANT. FLORES', '61010', '13.8', '27', '', '', 'null', '[\"15\"]', '[\"4\"]', 3, 1),
(126, 'PANT. CORDEROY LISO', '6o850', '', '35', '', '', 'null', '[\"15\"]', '[\"4\"]', 3, 1),
(127, 'CAMISAS LW', '83205', '14.8', '16', '', '', 'null', '[\"16\"]', '[\"4\"]', 3, 1),
(128, 'CAMISAS BURBERRY', '9853', '10.8', '13', '', '', 'null', '[\"17\"]', '[\"4\"]', 3, 1),
(129, 'SWEATERS ESTRELLA', '7129', '12.8', '50', '', '', 'null', '[\"17\"]', '[\"4\"]', 3, 1),
(130, 'CAMIAS BLANCAS CON CORAZON STRASS', '28416', '11.8', '15', '', '', 'null', '[\"17\"]', '[\"4\"]', 3, 1),
(131, 'REMERAS LANITA ESTRELLA', '1901', '13.8', '35', '', '', 'null', '[\"17\"]', '[\"4\"]', 3, 1),
(132, 'REMERAS BLANCAS LUNARES PLATEADOS', '8181', '9.8', '4', '', '', 'null', '[\"17\"]', '[\"4\"]', 3, 1),
(133, 'SACOS BUZO CON LOGO ATRÁS', '60871', '', '19', '', '', 'null', '[\"17\"]', '[\"4\"]', 3, 1),
(134, 'TAPADOS REVERSIBLES CUERINA CON LEOPARDO', '7755', '23.8', '10', '', '', 'null', '[\"17\"]', '[\"4\"]', 3, 1),
(135, 'REPOSICION DE 5 CAMISAS BURBERRY', '9853', '12.5', '5', '', '', 'null', '[\"17\"]', '[\"4\"]', 3, 1),
(136, 'SWEATER C/ CAMISA BURBERRY', '6060', '11.8', '35', '', '', 'null', '[\"17\"]', '[\"4\"]', 3, 1),
(137, 'SPOLVERINOS CEBRA CORDEROY', '39815', '14.8', '12', '', '', 'null', '[\"18\"]', '[\"4\"]', 3, 1),
(138, 'CAMPERAS CIERRE TIPO FENDI', 'M9102 MBX', '13.5', '12', '', '', 'null', '[\"19\"]', '[\"4\"]', 3, 1),
(139, 'SPOLVERINOS COLORES', '197', '14.5', '25', '', '', 'null', '[\"20\"]', '[\"4\"]', 3, 1),
(140, 'VESTIDOS LINO BLANCOS CON NUDO', '14336', '10', '12', '', '', 'null', '[\"21\"]', '[\"4\"]', 3, 1),
(141, 'PANTALONES LINO CON FLORES', '20208', '8', '8', '', '', 'null', '[\"21\"]', '[\"4\"]', 3, 1),
(142, 'VESTIDO LINO CON BOTON NACAR', 'X', '13', '24', '', '', 'null', '[\"22\"]', '[\"4\"]', 3, 1),
(143, 'VESTIDOS LINO CON CUELLITO', 'X', '14', '17', '', '', 'null', '[\"22\"]', '[\"4\"]', 3, 1),
(144, 'SWEATERS CON OCHOS ADELANTE Y LEVE BRILLO', '95239', '12', '50', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(145, 'SWEATERS OCHOS, 1/2 POLERA, MÁS LARGO ATRÁS QUE ADELANTE', '97785', '12', '60', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(146, 'SWEATERS ROMBOS Y PELOTITAS', '95230', '12', '60', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(147, 'PONCHOS LUNARES COLORES', '95563', '12', '24', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(148, 'SWEATERS BEIGE CON ECHARPE', '95165', '13', '21', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(149, 'SWEATERS CON BOLSILLO STRASS', '95547', '11.8', '60', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(150, 'SWEATERS RAYAS CON PLUSH', '95215', '12.5', '60', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(151, 'SWEATERS', 'X', '8.5', '24', '', '', 'null', '[\"24\"]', '[\"4\"]', 3, 1),
(152, 'SWEATERS', 'X', '7.5', '24', '', '', 'null', '[\"24\"]', '[\"4\"]', 3, 1),
(153, 'SWEATERS A CUADROS', 'M 9352 MBX', '12.5', '6', '', '', 'null', '[\"25\"]', '[\"4\"]', 3, 1),
(154, 'TAPADOS CHANEL BOUCLÉ NEGRO', '82382#', '15', '0', '', '', 'null', '[\"26\"]', '[\"4\"]', 3, 1),
(155, 'BOUCLE NEGROS', '82382#', '15', '15', '', '', 'null', '[\"26\"]', '[\"4\"]', 3, 1),
(156, 'CAMISAS BLANCAS CON RIBETE LEOPARDO HOMBRO', '', '10.8', '15', '', '', 'null', '[\"15\"]', '[\"4\"]', 3, 1),
(157, 'SPOLVERINOS DE CORDEROY LISO', '90691', '22', '26', '', '', 'null', '[\"27\"]', '[\"4\"]', 3, 1),
(158, 'SWEATER', '5116', '11', '34', '', '', 'null', '[\"28\"]', '[\"4\"]', 3, 1),
(159, 'BEAUTIFUL', '5035', '11', '9', '', '', 'null', '[\"28\"]', '[\"4\"]', 3, 1),
(160, 'LA VIE', '5055', '11', '22', '', '', 'null', '[\"28\"]', '[\"4\"]', 3, 1),
(161, 'GROS', '5116', '11', '40', '', '', 'null', '[\"28\"]', '[\"4\"]', 3, 1),
(162, 'CAMPERAS CORTAS AZUL C/ BRONCE Y AZUL C/ ROSA', 'AR8290B', '26', '20', '', '', 'null', '[\"29\"]', '[\"4\"]', 3, 1),
(163, 'CAMPERAS LARGAS NEGRO C/ROSA Y NEGRO C/ BRONCE', 'AR8289B', '32', '10', '', '', 'null', '[\"29\"]', '[\"4\"]', 3, 1),
(164, 'CAMPERAS REVERSIBLE C/ LOGO DE FENDI EN MARRON', 'V202001', '25', '6', '', '', 'null', '[\"30\"]', '[\"4\"]', 3, 1),
(165, 'PANTALONES RAYADOS CON CUERO AL COSTADO', '21720', '12.8', '20', '', '', 'null', '[\"31\"]', '[\"4\"]', 3, 1),
(166, 'BUZOS BLANCOS CON LOGO', '26250', '11.8', '3', '', '', 'null', '[\"31\"]', '[\"4\"]', 3, 1),
(167, 'CAMPERAS CIERRE TIPO FENDI', 'M9102 MBX', '13.5', '12', '', '', 'null', '[\"19\"]', '[\"4\"]', 3, 1),
(168, 'SPOLVERINOS COLORES', '197', '14.5', '25', '', '', 'null', '[\"20\"]', '[\"4\"]', 3, 1),
(169, 'VESTIDOS LINO BLANCOS CON NUDO', '14336', '10', '12', '', '', 'null', '[\"21\"]', '[\"4\"]', 3, 1),
(170, 'PANTALONES LINO CON FLORES', '20208', '8', '8', '', '', 'null', '[\"21\"]', '[\"4\"]', 3, 1),
(171, 'VESTIDO LINO CON BOTON NACAR', 'X', '13', '24', '', '', 'null', '[\"22\"]', '[\"4\"]', 3, 1),
(172, 'VESTIDOS LINO CON CUELLITO', 'X', '14', '17', '', '', 'null', '[\"22\"]', '[\"4\"]', 3, 1),
(173, 'SWEATERS CON OCHOS ADELANTE Y LEVE BRILLO', '95239', '12', '50', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(174, 'SWEATERS OCHOS, 1/2 POLERA, MÁS LARGO ATRÁS QUE ADELANTE', '97785', '12', '60', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(175, 'SWEATERS ROMBOS Y PELOTITAS', '95230', '12', '60', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(176, 'PONCHOS LUNARES COLORES', '95563', '12', '24', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(177, 'SWEATERS BEIGE CON ECHARPE', '95165', '13', '21', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(178, 'SWEATERS CON BOLSILLO STRASS', '95547', '11.8', '60', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(179, 'SWEATERS RAYAS CON PLUSH', '95215', '12.5', '60', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(180, 'SWEATERS', 'X', '8.5', '24', '', '', 'null', '[\"24\"]', '[\"4\"]', 3, 1),
(181, 'SWEATERS', 'X', '7.5', '24', '', '', 'null', '[\"24\"]', '[\"4\"]', 3, 1),
(182, 'SWEATERS A CUADROS', 'M 9352 MBX', '12.5', '6', '', '', 'null', '[\"25\"]', '[\"4\"]', 3, 1),
(183, 'TAPADOS CHANEL', '82382#', '15', '15', '', '', 'null', '[\"26\"]', '[\"4\"]', 3, 1),
(184, 'BOUCLE NEGROS', '82382#', '15', '15', '', '', 'null', '[\"26\"]', '[\"4\"]', 3, 1),
(185, 'CAMISAS BLANCAS CON RIBETE LEOPARDO HOMBRO', '', '10.8', '15', '', '', 'null', '[\"15\"]', '[\"4\"]', 3, 1),
(186, 'SPOLVERINOS DE CORDEROY', '', '22', '26', '', '', 'null', '[\"27\"]', '[\"4\"]', 3, 1),
(187, 'SWEATER', '5116', '11', '24', '', '', 'null', '[\"28\"]', '[\"4\"]', 3, 1),
(188, 'SW BEAUTIFUL', '5035', '11', '9', '', '', 'null', '[\"28\"]', '[\"4\"]', 3, 1),
(189, 'LA VIE', '5055', '11', '22', '', '', 'null', '[\"28\"]', '[\"4\"]', 3, 1),
(190, 'GROS', '5116', '11', '40', '', '', 'null', '[\"28\"]', '[\"4\"]', 3, 1),
(191, 'CAMPERAS CORTAS AZUL C/ BRONCE Y AZUL C/ ROSA', 'AR8290B', '26', '20', '', '', 'null', '[\"29\"]', '[\"4\"]', 3, 1),
(192, 'CAMPERAS LARGAS NEGRO C/ROSA Y NEGRO C/ BRONCE', 'AR8289B', '32', '10', '', '', 'null', '[\"29\"]', '[\"4\"]', 3, 1),
(193, 'CAMPERAS REVERSIBLE C/ LOGO DE FENDI EN MARRON', 'V202001', '25', '6', '', '', 'null', '[\"30\"]', '[\"4\"]', 3, 1),
(194, 'PANTALONES RAYADOS CON CUERO AL COSTADO', '21720', '12.8', '20', '', '', 'null', '[\"31\"]', '[\"4\"]', 3, 1),
(195, 'BUZOS BLANCOS CON LOGO', '26250', '11.8', '3', '', '', 'null', '[\"31\"]', '[\"4\"]', 3, 1),
(196, 'BIANCO', '50975', '11', '19', '', '', 'null', '[\"31\"]', '[\"4\"]', 3, 1),
(197, 'CAMISA C/ LENTEJUELAS', '9205', '10.5', '31', '', '', 'null', '[\"31\"]', '[\"4\"]', 3, 1),
(198, 'A - BARI', '50987', '12', '26', '', '', 'null', '[\"31\"]', '[\"4\"]', 3, 1),
(199, 'BIANCO', '50630', '12.5', '20', '', '', 'null', '[\"31\"]', '[\"4\"]', 3, 1),
(200, 'A - BARI', '50211', '13.5', '19', '', '', 'null', '[\"31\"]', '[\"4\"]', 3, 1),
(201, 'A - BARI', '50339', '15.5', '32', '', '', 'null', '[\"31\"]', '[\"4\"]', 3, 1),
(202, 'CAMPERA GISELLE', '50929', '14', '36', '', '', 'null', '[\"31\"]', '[\"4\"]', 3, 1),
(203, 'BIANCO', '50895', '11.5', '12', '', '', 'null', '[\"31\"]', '[\"4\"]', 3, 1),
(204, 'BIANCO', '50935', '13.5', '24', '', '', 'null', '[\"31\"]', '[\"4\"]', 3, 1),
(205, 'BIANCO', '50921', '10.5', '11', '', '', 'null', '[\"31\"]', '[\"4\"]', 3, 1),
(206, 'BIANCO', '50890', '12.5', '48', '', '', 'null', '[\"31\"]', '[\"4\"]', 3, 1),
(207, 'SPOLVERINO LINOBOTONES', '197', '14.5', '25', '', '', 'null', '[\"3\"]', '[\"4\"]', 3, 1),
(208, 'VESTIDOS BLANCOS CON NUDO', '14336', '10', '12', '', '', 'null', '[\"4\"]', '[\"4\"]', 3, 1),
(209, 'PANTALONES LINO FLORES', '20208', '8', '8', '', '', 'null', '[\"4\"]', '[\"4\"]', 3, 1),
(210, 'VESTIDO LINO C/BOTON NACAR', '', '13', '24', '', '', 'null', '[\"5\"]', '[\"4\"]', 3, 1),
(211, 'VESTIDO LINO C/CUELLO', '4', '14', '17', '', '', 'null', '[\"5\"]', '[\"4\"]', 3, 1),
(212, 'BABUCHAS CORDEROY LEOPARDO', '80358', '11.5', '25', '', '', 'null', '[\"6\"]', '[\"4\"]', 3, 1),
(213, 'BABUCHA CORDEROY FLORES', '61330', '13.8', '55', '', '', 'null', '[\"7\"]', '[\"4\"]', 3, 1),
(214, 'BABUCHAS FLORES', '61010', '13.8', '-23', '', '', 'null', '[\"7\"]', '[\"4\"]', 3, 1),
(215, 'BABUCHAS CORDEROY LISO', '60850', '', '35', '', '', 'null', '[\"7\"]', '[\"4\"]', 3, 1),
(216, 'CAMISAS LW', '83205', '14.8', '16', '', '', 'null', '[\"7\"]', '[\"4\"]', 3, 1),
(217, 'CAMISAS BURBERRY', '9853', '10.8', '13', '', '', 'null', '[\"7\"]', '[\"4\"]', 3, 1),
(218, 'SWEATERS ESTRELLA', '7129', '12.8', '50', '', '', 'null', '[\"7\"]', '[\"4\"]', 3, 1),
(219, 'CAMPERAS TIPO FENDI CON CIERRE', 'M9102', '13.5', '12', '', '', 'null', '[\"8\"]', '[\"4\"]', 3, 1),
(220, 'CAMISAS CON CORAZON STRASS', '28416', '11.8', '15', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(221, 'REMERAS LANITA ESTRELLA', '1901', '13.8', '35', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(222, 'REMERAS BLANCAS CON LUNARES', '8181', '9.8', '4', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(223, 'SPOLVERINOS CON LOGO', '60871', '16.8', '19', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(224, 'TAPADOS REVERSIBLES CON LEOPARD', '7755', '23.8', '10', '', '', 'null', '[\"9\"]', '[\"4\"]', 3, 1),
(225, 'PANT. CORDEROY FINITO . LEOPARDO, GRIS Y CAMEL', '80358', '11.5', '25', '', '', 'null', '[\"14\"]', '[\"4\"]', 3, 1),
(226, 'PANT. CORDEROY FLORES', '61330', '13.8', '55', '', '', 'null', '[\"15\"]', '[\"4\"]', 3, 1),
(227, 'PANT. FLORES', '61010', '13.8', '27', '', '', 'null', '[\"15\"]', '[\"4\"]', 3, 1),
(228, 'PANT. CORDEROY LISO', '6o850', '', '35', '', '', 'null', '[\"15\"]', '[\"4\"]', 3, 1),
(229, 'CAMISAS LW', '83205', '14.8', '16', '', '', 'null', '[\"16\"]', '[\"4\"]', 3, 1),
(230, 'CAMISAS BURBERRY', '9853', '10.8', '13', '', '', 'null', '[\"17\"]', '[\"4\"]', 3, 1),
(231, 'SWEATERS ESTRELLA', '7129', '12.8', '50', '', '', 'null', '[\"17\"]', '[\"4\"]', 3, 1),
(232, 'CAMIAS BLANCAS CON CORAZON STRASS', '28416', '11.8', '15', '', '', 'null', '[\"17\"]', '[\"4\"]', 3, 1),
(233, 'REMERAS LANITA ESTRELLA', '1901', '13.8', '35', '', '', 'null', '[\"17\"]', '[\"4\"]', 3, 1),
(234, 'REMERAS BLANCAS LUNARES PLATEADOS', '8181', '9.8', '4', '', '', 'null', '[\"17\"]', '[\"4\"]', 3, 1),
(235, 'SACOS BUZO CON LOGO ATRÁS', '60871', '', '19', '', '', 'null', '[\"17\"]', '[\"4\"]', 3, 1),
(236, 'TAPADOS REVERSIBLES CUERINA CON LEOPARDO', '7755', '23.8', '10', '', '', 'null', '[\"17\"]', '[\"4\"]', 3, 1),
(237, 'REPOSICION DE 5 CAMISAS BURBERRY', '9853', '10.8', '5', '', '', 'null', '[\"17\"]', '[\"4\"]', 3, 1),
(238, 'SWEATER C/ CAMISA BURBERRY', '6060', '11.8', '35', '', '', 'null', '[\"17\"]', '[\"4\"]', 3, 1),
(239, 'CAMISAS FENDI', '835J8', '13.8', '10', '', '', 'null', '[\"17\"]', '[\"4\"]', 3, 1),
(240, 'SPOLVERINOS CEBRA CORDEROY', '39815', '14.8', '12', '', '', 'null', '[\"17\"]', '[\"4\"]', 3, 1),
(241, 'CAMPERAS CIERRE TIPO FENDI', 'M9102 MBX', '13.5', '12', '', '', 'null', '[\"19\"]', '[\"4\"]', 3, 1),
(242, 'SPOLVERINOS COLORES', '197', '14.5', '25', '', '', 'null', '[\"20\"]', '[\"4\"]', 3, 1),
(243, 'VESTIDOS LINO BLANCOS CON NUDO', '14336', '10', '12', '', '', 'null', '[\"21\"]', '[\"4\"]', 3, 1),
(244, 'PANTALONES LINO CON FLORES', '20208', '8', '8', '', '', 'null', '[\"21\"]', '[\"4\"]', 3, 1),
(245, 'VESTIDO LINO CON BOTON NACAR', 'X', '13', '24', '', '', 'null', '[\"22\"]', '[\"4\"]', 3, 1),
(246, 'VESTIDOS LINO CON CUELLITO', 'X', '14', '17', '', '', 'null', '[\"22\"]', '[\"4\"]', 3, 1),
(247, 'SWEATERS CON OCHOS ADELANTE Y LEVE BRILLO', '95239', '12', '50', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(248, 'SWEATERS OCHOS, 1/2 POLERA, MÁS LARGO ATRÁS QUE ADELANTE', '97785', '12', '60', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(249, 'SWEATERS ROMBOS Y PELOTITAS', '95230', '12', '60', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(250, 'PONCHOS LUNARES COLORES', '95563', '12', '24', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(251, 'SWEATERS BEIGE CON ECHARPE', '95165', '13', '21', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(252, 'SWEATERS CON BOLSILLO STRASS', '95547', '11.8', '60', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(253, 'SWEATERS RAYAS CON PLUSH', '95215', '12.5', '60', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(254, 'SWEATERS', 'X', '8.5', '24', '', '', 'null', '[\"24\"]', '[\"4\"]', 3, 1),
(255, 'SWEATERS', 'X', '7.5', '24', '', '', 'null', '[\"24\"]', '[\"4\"]', 3, 1),
(256, 'SWEATERS A CUADROS', 'M 9352 MBX', '12.5', '6', '', '', 'null', '[\"25\"]', '[\"4\"]', 3, 1),
(257, 'TAPADOS CHANEL', '82382#', '15', '15', '', '', 'null', '[\"26\"]', '[\"4\"]', 3, 1),
(258, 'BOUCLE NEGROS', '82382#', '15', '15', '', '', 'null', '[\"26\"]', '[\"4\"]', 3, 1),
(259, 'CAMISAS BLANCAS CON RIBETE LEOPARDO HOMBRO', '', '10.8', '15', '', '', 'null', '[\"15\"]', '[\"4\"]', 3, 1),
(260, 'SPOLVERINOS DE CORDEROY', '', '22', '26', '', '', 'null', '[\"27\"]', '[\"4\"]', 3, 1),
(261, 'SWEATER', '5116', '11', '34', '', '', 'null', '[\"28\"]', '[\"4\"]', 3, 1),
(262, 'BEAUTIFUL', '5035', '11', '9', '', '', 'null', '[\"28\"]', '[\"4\"]', 3, 1),
(263, 'LA VIE', '5055', '11', '22', '', '', 'null', '[\"28\"]', '[\"4\"]', 3, 1),
(264, 'GROS', '5116', '11', '40', '', '', 'null', '[\"28\"]', '[\"4\"]', 3, 1),
(265, 'CAMPERAS CORTAS AZUL C/ BRONCE Y AZUL C/ ROSA', 'AR8290B', '26', '20', '', '', 'null', '[\"29\"]', '[\"4\"]', 3, 1),
(266, 'CAMPERAS LARGAS NEGRO C/ROSA Y NEGRO C/ BRONCE', 'AR8289B', '32', '10', '', '', 'null', '[\"29\"]', '[\"4\"]', 3, 1),
(267, 'CAMPERAS REVERSIBLE C/ LOGO DE FENDI EN MARRON', 'V202001', '25', '6', '', '', 'null', '[\"30\"]', '[\"4\"]', 3, 1),
(268, 'PANTALONES RAYADOS CON CUERO AL COSTADO', '21720', '12.8', '20', '', '', 'null', '[\"31\"]', '[\"4\"]', 3, 1),
(269, 'BUZOS BLANCOS CON LOGO', '26250', '11.8', '3', '', '', 'null', '[\"31\"]', '[\"4\"]', 3, 1),
(270, 'CAMPERAS CIERRE TIPO FENDI', 'M9102 MBX', '13.5', '12', '', '', 'null', '[\"19\"]', '[\"4\"]', 3, 1),
(271, 'SPOLVERINOS COLORES', '197', '14.5', '25', '', '', 'null', '[\"20\"]', '[\"4\"]', 3, 1),
(272, 'VESTIDOS LINO BLANCOS CON NUDO', '14336', '10', '12', '', '', 'null', '[\"21\"]', '[\"4\"]', 3, 1),
(273, 'PANTALONES LINO CON FLORES', '20208', '8', '8', '', '', 'null', '[\"21\"]', '[\"4\"]', 3, 1),
(274, 'VESTIDO LINO CON BOTON NACAR', 'X', '13', '24', '', '', 'null', '[\"22\"]', '[\"4\"]', 3, 1),
(275, 'VESTIDOS LINO CON CUELLITO', 'X', '14', '17', '', '', 'null', '[\"22\"]', '[\"4\"]', 3, 1),
(276, 'SWEATERS CON OCHOS ADELANTE Y LEVE BRILLO', '95239', '12', '50', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(277, 'SWEATERS OCHOS, 1/2 POLERA, MÁS LARGO ATRÁS QUE ADELANTE', '97785', '12', '60', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(278, 'SWEATERS ROMBOS Y PELOTITAS', '95230', '12', '60', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(279, 'PONCHOS LUNARES COLORES', '95563', '12', '24', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(280, 'SWEATERS BEIGE CON ECHARPE', '95165', '13', '16', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(281, 'SWEATERS CON BOLSILLO STRASS', '95547', '11.8', '60', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(282, 'SWEATERS RAYAS CON PLUSH', '95215', '12.5', '60', '', '', 'null', '[\"23\"]', '[\"4\"]', 3, 1),
(283, 'SWEATERS', 'X', '8.5', '24', '', '', 'null', '[\"24\"]', '[\"4\"]', 3, 1),
(284, 'SWEATERS', 'X', '7.5', '24', '', '', 'null', '[\"24\"]', '[\"4\"]', 3, 1),
(285, 'SWEATERS A CUADROS', 'M 9352 MBX', '12.5', '6', '', '', 'null', '[\"25\"]', '[\"4\"]', 3, 1),
(286, 'TAPADOS CHANEL', '82382#', '15', '15', '', '', 'null', '[\"26\"]', '[\"4\"]', 3, 1),
(287, 'BOUCLE NEGROS', '82382#', '15', '15', '', '', 'null', '[\"26\"]', '[\"4\"]', 3, 1),
(288, 'CAMISAS BLANCAS CON RIBETE LEOPARDO HOMBRO', '', '10.8', '15', '', '', 'null', '[\"15\"]', '[\"4\"]', 3, 1),
(289, 'SPOLVERINOS DE CORDEROY', '', '22', '26', '', '', 'null', '[\"27\"]', '[\"4\"]', 3, 1),
(290, 'SWEATER', '5116', '11', '34', '', '', 'null', '[\"28\"]', '[\"4\"]', 3, 1),
(291, 'BEAUTIFUL', '5035', '80', '9', '', '', 'null', '[\"28\"]', '[\"4\"]', 3, 1),
(292, 'LA VIE', '5055', '11', '22', '', '', 'null', '[\"28\"]', '[\"4\"]', 3, 1),
(293, 'GROS', '5116', '11', '40', '', '', 'null', '[\"28\"]', '[\"4\"]', 3, 1),
(294, 'CAMPERAS CORTAS AZUL C/ BRONCE Y AZUL C/ ROSA', 'AR8290B', '26', '20', '', '', 'null', '[\"29\"]', '[\"4\"]', 3, 1),
(295, 'CAMPERAS LARGAS NEGRO C/ROSA Y NEGRO C/ BRONCE', 'AR8289B', '32', '10', '', '', 'null', '[\"29\"]', '[\"4\"]', 3, 1),
(296, 'CAMPERAS REVERSIBLE C/ LOGO DE FENDI EN MARRON', 'V202001', '25', '6', '', '', 'null', '[\"30\"]', '[\"4\"]', 3, 1),
(297, 'PANTALONES RAYADOS CON CUERO AL COSTADO', '21720', '12.8', '20', '', '', 'null', '[\"31\"]', '[\"4\"]', 3, 1),
(298, 'BUZOS BLANCOS CON LOGO', '26250', '11.8', '3', '', '', 'null', '[\"31\"]', '[\"4\"]', 3, 1),
(299, 'BLUSA LW BLANCA', '80381', '11.5', '9', '', '', 'null', '[\"32\"]', '[\"4\"]', 3, 1),
(300, 'BLUSA LW NEGRA', '80381', '11.5', '10', '', '', 'null', '[\"32\"]', '[\"4\"]', 3, 1),
(301, 'POLERAS CLASICAS', '18065', '13', '82', '', '', 'null', '[\"32\"]', '[\"4\"]', 3, 1),
(302, '83558b', 'AN003', '10.5', '45', '', '', 'null', '[\"32\"]', '[\"4\"]', 3, 1),
(303, 'SUETERS C/ DETALLE EN MANGA', '19814', '8.5', '38', '', '', 'null', '[\"32\"]', '[\"4\"]', 3, 1),
(304, 'SACOS C/ DIBUJOS Y LEOP. ATRÁS', '19806', '11', '20', '', '', 'null', '[\"32\"]', '[\"4\"]', 3, 1),
(305, 'CONJUNTOS DE CAMISAS C/ CHALECOS', '1908', '13.5', '34', '', '', 'null', '[\"32\"]', '[\"4\"]', 3, 1),
(306, 'POLERAS SUAVES', '18903', '8.5', '20', '', '', 'null', '[\"32\"]', '[\"4\"]', 3, 1),
(307, 'SUETERS LARGO BOLSILLO Y ESTRELLA', '18906', '10.5', '30', '', '', 'null', '[\"32\"]', '[\"4\"]', 3, 1),
(308, 'BLUSAS BLANCAS C/ ESTRELLA PLATEADA', '80091', '10.5', '7', '', '', 'null', '[\"32\"]', '[\"4\"]', 3, 1),
(309, 'CAMPERAS ALGODÓN BEAUTIFUL Y ESTRELLA ESPALDA', '99911', '15.5', '20', '', '', 'null', '[\"32\"]', '[\"4\"]', 3, 1),
(310, 'BUZOS BEIGE MORLEY C/ ESTRELLA DORADA EN CENTRO', '60612', '10.5', '10', '', '', 'null', '[\"32\"]', '[\"4\"]', 3, 1),
(311, 'SUETERS BEAUTIFUL', 'HN003', '10.5', '57', '', '', 'null', '[\"32\"]', '[\"4\"]', 3, 1),
(312, 'SUETERS NEGRS ESCRITOS', '19833', '10.5', '5', '', '', 'null', '[\"32\"]', '[\"4\"]', 3, 1),
(313, 'BLUSAS C/ ESTRELLA ALEOPARDADA', '99981', '10.5', '50', '', '', 'null', '[\"32\"]', '[\"4\"]', 3, 1),
(314, 'X', '1508', '10.5', '34', '', '', 'null', '[\"32\"]', '[\"4\"]', 3, 1),
(315, 'SW', 'L6767', '10', '40', '', '', 'null', '[\"33\"]', '[\"4\"]', 3, 1),
(316, 'SW', 'Q261', '9.8', '40', '', '', 'null', '[\"33\"]', '[\"4\"]', 3, 1),
(317, 'SW', 'JKL139', '13.5', '40', '', '', 'null', '[\"33\"]', '[\"4\"]', 3, 1),
(318, 'SW', 'TR8173', '9', '40', '', '', 'null', '[\"33\"]', '[\"4\"]', 3, 1),
(319, 'SW', 'JKL095', '14', '60', '', '', 'null', '[\"33\"]', '[\"4\"]', 3, 1),
(320, 'SW', 'JKL049', '10.5', '40', '', '', 'null', '[\"33\"]', '[\"4\"]', 3, 1),
(321, 'SW', 'L6722', '10', '10', '', '', 'null', '[\"33\"]', '[\"4\"]', 3, 1),
(322, 'SW', 'JKL102', '9.5', '40', '', '', 'null', '[\"33\"]', '[\"4\"]', 3, 1),
(323, 'SW', 'TR81651', '10', '40', '', '', 'null', '[\"33\"]', '[\"4\"]', 3, 1),
(324, 'SW', 'JKL135', '11', '60', '', '', 'null', '[\"33\"]', '[\"4\"]', 3, 1),
(325, 'SW', 'JKL144', '8.8', '20', '', '', 'null', '[\"33\"]', '[\"4\"]', 3, 1),
(326, 'SW', 'Q281', '9', '20', '', '', 'null', '[\"33\"]', '[\"4\"]', 3, 1),
(327, 'SW', 'JKL141', '9.5', '20', '', '', 'null', '[\"33\"]', '[\"4\"]', 3, 1),
(328, 'SW', 'TR8177', '9.5', '20', '', '', 'null', '[\"33\"]', '[\"4\"]', 3, 1),
(329, 'SW', 'JKL099', '9', '20', '', '', 'null', '[\"33\"]', '[\"4\"]', 3, 1),
(330, 'SW', 'TR8216', '9', '20', '', '', 'null', '[\"33\"]', '[\"4\"]', 3, 1),
(331, 'REMERA CON ESTAMPA WAR DREAM', '26252', '9.5', '20', '', '', 'null', '[\"11\"]', '[\"4\"]', 3, 1),
(332, 'REMERA CAMUFLADA CON ESTRELLA', '26330', '10', '63', '', '', 'null', '[\"11\"]', '[\"4\"]', 3, 1),
(333, 'CAMISA LARGA CON BOLSILLO LENTEJUELAS', '60360', '11', '89', '', '', 'null', '[\"11\"]', '[\"4\"]', 3, 1),
(334, 'SW CON ESTRELLITAS AL COSTADO LENTEJUELAS', '8001', '11', '99', '', '', 'null', '[\"11\"]', '[\"4\"]', 3, 1),
(335, 'SW CON ESTRELLA', '8001', '11', '49', '', '', 'null', '[\"11\"]', '[\"4\"]', 3, 1),
(336, 'SW JH  LOUISE OROP', '8032', '13', '16', '', '', 'null', '[\"34\"]', '[\"4\"]', 3, 1),
(337, 'POLERA LOUISE OROP', '5425', '12.5', '10', '', '', 'null', '[\"34\"]', '[\"4\"]', 3, 1),
(338, 'SW', '1315', '10', '24', '', '', 'null', '[\"34\"]', '[\"4\"]', 3, 1),
(339, 'SW', '6064', '9', '24', '', '', 'null', '[\"34\"]', '[\"4\"]', 3, 1),
(340, 'SW', '6246', '11', '10', '', '', 'null', '[\"34\"]', '[\"4\"]', 3, 1),
(341, 'ABRIGO', '2183', '11', '40', '', '', 'null', '[\"35\"]', '[\"4\"]', 3, 1),
(342, 'ABRIGO', '1544', '13.5', '40', '', '', 'null', '[\"35\"]', '[\"4\"]', 3, 1),
(343, 'VESTIDO', '5611', '8.5', '44', '', '', 'null', '[\"35\"]', '[\"4\"]', 3, 1),
(344, 'CAMISA', '4589', '7', '30', '', '', 'null', '[\"35\"]', '[\"4\"]', 3, 1),
(345, 'SPOLVERINO', '1459', '11', '40', '', '', 'null', '[\"35\"]', '[\"4\"]', 3, 1),
(346, 'SPOLVERINO', '2183', '11', '40', '', '', 'null', '[\"35\"]', '[\"4\"]', 3, 1),
(347, 'SPOLVERINO', '1544', '13.5', '40', '', '', 'null', '[\"35\"]', '[\"4\"]', 3, 1),
(348, 'PANTALON JEAN', '2303', '11.5', '15', '', '', 'null', '[\"35\"]', '[\"4\"]', 3, 1),
(349, 'PANTALON JEAN', '2399', '11.5', '14', '', '', 'null', '[\"35\"]', '[\"4\"]', 3, 1),
(350, 'GIACCA', '1344', '15', '15', '', '', 'null', '[\"35\"]', '[\"4\"]', 3, 1),
(351, 'GIACCA', '1461', '15', '27', '', '', 'null', '[\"35\"]', '[\"4\"]', 3, 1),
(352, 'GIACCA', '1531', '13.5', '20', '', '', 'null', '[\"35\"]', '[\"4\"]', 3, 1),
(353, 'X', '18935', '8.5', '20', '', '', 'null', '[\"36\"]', '[\"4\"]', 3, 1),
(354, 'X', '55911 - 53911', '15.5', '20', '', '', 'null', '[\"36\"]', '[\"4\"]', 3, 1),
(355, 'X', '15833', '10.5', '5', '', '', 'null', '[\"36\"]', '[\"4\"]', 3, 1),
(356, 'X', '55981', '11', '49', '', '', 'null', '[\"36\"]', '[\"4\"]', 3, 1),
(357, 'CAMISAS ZEBRA CORDEROY', '38915', '14.8', '12', '', '', 'null', '[\"50\"]', '[\"4\"]', 3, 1),
(358, 'REMERA LOVE', '70738A', '11', '68', '', '', 'null', '[\"37\"]', '[\"4\"]', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `active`) VALUES
(3, 'Tienda 1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`) VALUES
(1, 'adminknst', '$2y$10$yfi5nUQGXUZtMdl27dWAyOd/jMOmATBpiUvJDmUu9hJ5Ro6BE5wsK', 'admin@admin.com', 'john', 'doe', '80789998', 1),
(6, 'Pabloanm', '$2y$10$aiftBZAyOw5Z0xKFC5Fz9.tV6BoizP2rPalMfPt55s53iFAXQpPKe', 'pabloanm@gmail.com', 'Pablo', 'Nuñez', '1165690856', 1),
(7, 'tamaravnm', '$2y$10$/sx8nfJgkB4agLepCsgole4X2JgeM2ifYU5znK2I.jxxB028GI4jO', 'pabloanm@yahoo.com', 'Tamara', 'Nuñez', '01115656908', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(7, 6, 4),
(8, 7, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_item`
--
ALTER TABLE `orders_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders_item`
--
ALTER TABLE `orders_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
