-- MySQL dump 10.13  Distrib 5.5.19, for Win32 (x86)
--
-- Host: localhost    Database: monitorphoneDB
-- ------------------------------------------------------
-- Server version	5.5.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `monitorphoneDB`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `monitorphonedb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `monitorphoneDB`;

--
-- Table structure for table `car_location_data`
--

DROP TABLE IF EXISTS `car_location_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_location_data` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `car_number` varchar(10) NOT NULL,
  `latitude` varchar(10) NOT NULL,
  `longitude` varchar(10) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_location_data`
--

LOCK TABLES `car_location_data` WRITE;
/*!40000 ALTER TABLE `car_location_data` DISABLE KEYS */;
INSERT INTO `car_location_data` VALUES (1,'CL-1234','23.563102','120.469787','2010-10-07 08:11:18'),(2,'CL-1234','23.563102','120.469787','2010-10-07 08:11:19'),(3,'CL-1234','23.563761','120.470345','2010-10-07 08:11:20'),(4,'CL-1234','23.564941','120.471268','2010-10-07 08:11:21'),(5,'CL-1234','23.565502','120.470356','2010-10-07 08:11:21'),(6,'CL-1234','23.566092','120.469573','2010-10-07 08:11:23'),(7,'CL-1234','23.567449','120.470635','2010-10-07 08:11:22'),(8,'CL-1234','23.567862','120.470077','2010-10-07 08:11:24'),(9,'CL-1234','23.569179','120.470957','2010-10-07 08:11:26'),(10,'CL-1234','23.568983','120.471514','2010-10-07 08:11:26'),(11,'CL-1234','23.568983','120.473607','2010-10-07 08:11:27'),(12,'CL-1234','23.569160','120.474615','2010-10-07 08:11:28');
/*!40000 ALTER TABLE `car_location_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_data`
--

DROP TABLE IF EXISTS `user_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_data` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `car_number` varchar(10) NOT NULL,
  `user_phone` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_data`
--

LOCK TABLES `user_data` WRITE;
/*!40000 ALTER TABLE `user_data` DISABLE KEYS */;
INSERT INTO `user_data` VALUES (1,'test1','test1','Terry','CL-1234','0912345678'),(2,'test2','test2','Ray','ZD-9527','0923456789');
/*!40000 ALTER TABLE `user_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-02-21 17:06:47
