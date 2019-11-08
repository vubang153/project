/*
SQLyog Professional v13.1.1 (64 bit)
MySQL - 10.4.8-MariaDB : Database - divine_shop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`divine_shop` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `divine_shop`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `account` */

/*Table structure for table `account_infomation` */

DROP TABLE IF EXISTS `account_infomation`;

CREATE TABLE `account_infomation` (
  `id` int(20) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `profile_img` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `account_infomation_ibfk_1` FOREIGN KEY (`id`) REFERENCES `account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `account_infomation` */

/*Table structure for table `multi_account_address` */

DROP TABLE IF EXISTS `multi_account_address`;

CREATE TABLE `multi_account_address` (
  `id_account` int(20) NOT NULL,
  `id_address` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `province_id` int(2) NOT NULL,
  `city_id` int(2) NOT NULL,
  PRIMARY KEY (`id_account`),
  UNIQUE KEY `id_address` (`id_address`),
  CONSTRAINT `multi_account_address_ibfk_1` FOREIGN KEY (`id_account`) REFERENCES `account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `multi_account_address` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
