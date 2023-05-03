-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: truonghoc
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
CREATE DATABASE IF NOT EXISTS `truonghoc` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `truonghoc`;
--
-- Table structure for table `CAP`
--

DROP TABLE IF EXISTS `CAP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CAP` (
  `MA_CAP` Nvarchar(5) NOT NULL,
  `TEN_CAP` Nvarchar(30) NOT NULL,
  PRIMARY KEY (`MA_CAP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Table structure for table `LOAITRUONG`
--

DROP TABLE IF EXISTS `LOAITRUONG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LOAITRUONG` (
  `MA_LT` char(3) NOT NULL,
  `TEN_LT` Nvarchar(100) NOT NULL,
  PRIMARY KEY (`MA_LT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Table structure for table `LOAIHINH`
--

DROP TABLE IF EXISTS `LOAIHINH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LOAIHINH` (
  `MA_LH` char(4) NOT NULL,
  `TEN_LH` Nvarchar(20) NOT NULL,
  PRIMARY KEY (`MA_LH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Table structure for table `SOGD`
--

DROP TABLE IF EXISTS `SOGD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SOGD` (
  `MA_SGD` char(5) NOT NULL,
  `TEN_SGD` Nvarchar(50) NOT NULL,
  PRIMARY KEY (`MA_SGD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Table structure for table `PHONGGD`
--

DROP TABLE IF EXISTS `PHONGGD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PHONGGD` (
  `MA_PGD` char(4) NOT NULL,
  `TEN_PHG` Nvarchar(30) NOT NULL,
  `MA_SGD` char(5) NOT NULL,
  PRIMARY KEY (`MA_PGD`),
  CONSTRAINT FOREIGN KEY (`MA_SGD`) REFERENCES `SOGD` (`MA_SGD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Table structure for table `DSTRUONG`
--

DROP TABLE IF EXISTS `DSTRUONG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DSTRUONG` (
  `MA_TRG` Nvarchar(15) NOT NULL,
  `TEN_TRG` Nvarchar(100) NOT NULL,
  `MA_CAP` Nvarchar(5) NOT NULL,
  `MA_LT` char(3), 
  `MA_SGD` char(5),
  `MA_PGD` char(4),
  `MA_LH` char(4),
  `DIACHI` Nvarchar(200),
  PRIMARY KEY (`MA_TRG`,`MA_CAP`),
  CONSTRAINT FOREIGN KEY (`MA_CAP`) REFERENCES `CAP` (`MA_CAP`),
  CONSTRAINT FOREIGN KEY (`MA_LT`) REFERENCES `LOAITRUONG` (`MA_LT`),
  CONSTRAINT FOREIGN KEY (`MA_SGD`) REFERENCES `SOGD` (`MA_SGD`),
  CONSTRAINT FOREIGN KEY (`MA_PGD`) REFERENCES `PHONGGD` (`MA_PGD`),
  CONSTRAINT FOREIGN KEY (`MA_LH`) REFERENCES `LOAIHINH` (`MA_LH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-05 11:57:50
