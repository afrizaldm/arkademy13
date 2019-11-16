-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.37-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             10.2.0.5738
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for sales
DROP DATABASE IF EXISTS `sales`;
CREATE DATABASE IF NOT EXISTS `sales` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sales`;

-- Dumping structure for table sales.cashier
DROP TABLE IF EXISTS `cashier`;
CREATE TABLE IF NOT EXISTS `cashier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table sales.cashier: ~3 rows (approximately)
/*!40000 ALTER TABLE `cashier` DISABLE KEYS */;
REPLACE INTO `cashier` (`id`, `name`) VALUES
	(1, 'Pevita Pearce'),
	(2, 'Raisa'),
	(3, 'Afrizal Mahendra');
/*!40000 ALTER TABLE `cashier` ENABLE KEYS */;

-- Dumping structure for table sales.category
DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table sales.category: ~2 rows (approximately)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
REPLACE INTO `category` (`id`, `name`) VALUES
	(1, 'Food'),
	(2, 'Drink');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table sales.product
DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `id_category` int(11) NOT NULL,
  `id_cashier` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table sales.product: ~3 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
REPLACE INTO `product` (`id`, `name`, `price`, `id_category`, `id_cashier`) VALUES
	(1, 'Latte', 10000, 2, 1),
	(2, 'Cake', 20000, 1, 2),
	(3, 'Black Chocolate', 50000, 1, 3);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Dumping structure for view sales.sale
DROP VIEW IF EXISTS `sale`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `sale` (
	`cashier` VARCHAR(250) NOT NULL COLLATE 'latin1_swedish_ci',
	`product` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`category` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`price` INT(11) NULL
) ENGINE=MyISAM;

-- Dumping structure for view sales.sale
DROP VIEW IF EXISTS `sale`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `sale`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sale` AS SELECT c.name AS cashier, p.name AS product, ct.name AS category, p.price FROM cashier c INNER JOIN product p ON c.id = p.id_cashier INNER JOIN category ct ON ct.id = p.id_category ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
