-- MySQL dump 10.13  Distrib 8.0.25, for macos11.3 (x86_64)
--
-- Host: 127.0.0.1    Database: akademik
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `admin_username` varchar(18) NOT NULL,
  `admin_passwd` varchar(65) NOT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `administrator_admin_username_uindex` (`admin_username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (1,'adm-operator','9b8769a4a742959a2d0298c36fb70623f2dfacda8436237df08d8dfd5b37374c'),(2,'maintainer','31d93198a3a2262ea8e672aceb40cfab55432cce34bc3b2258329241a9ab0761'),(5,'key-admin','7ed471d4c087c7393f91c97136f5030785b2ce4cf4023add312166a36a78b4b5');
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_list`
--

DROP TABLE IF EXISTS `transaction_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_list` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(24) NOT NULL,
  `student_id` varchar(10) NOT NULL,
  `student_faculty` varchar(36) NOT NULL,
  `student_major` varchar(32) NOT NULL,
  `student_batch` varchar(4) NOT NULL,
  `student_semester` int DEFAULT NULL,
  `student_credit` int NOT NULL,
  `cf_fixed` double NOT NULL,
  `cf_variable` double DEFAULT NULL,
  `cf_total` double NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_list`
--

LOCK TABLES `transaction_list` WRITE;
/*!40000 ALTER TABLE `transaction_list` DISABLE KEYS */;
INSERT INTO `transaction_list` VALUES (1,'John Doe','5190411432','Faculty of Science and Technology','Informatics','2019',4,20,2050000,3400000,5450000),(2,'Howard Clade','5200411132','Faculty of Science and Technology','Electrical Engineering','2020',2,22,1800000,3850000,5650000),(4,'Keiley Takes','5190411435','Faculty of Science and Technology','Informatics','2019',4,22,2050000,3740000,5790000),(7,'James Zuckerberg','5180221441','Faculty of Science and Technology','Informatics','2018',6,20,2000000,3200000,5200000),(11,'John Doe','5190411222','Faculty of Science and Technology','Informatics','2019',4,23,2050000,3910000,5960000),(14,'Frederick Johnson','520221121','Faculty of Science and Technology','Electrical Engineering','2020',3,24,1800000,4200000,6000000),(15,'John Doe','5190411222','Faculty of Science and Technology','Informatics','2019',4,23,2050000,3910000,5960000);
/*!40000 ALTER TABLE `transaction_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-31 17:56:14
