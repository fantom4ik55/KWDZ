-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: Human_friends
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Table structure for table `animal`
--

DROP TABLE IF EXISTS `animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animal` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Class_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
INSERT INTO `animal` VALUES (1,'вьючные'),(2,'домашние');
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camels`
--

DROP TABLE IF EXISTS `camels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camels` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `Commands` varchar(50) DEFAULT NULL,
  `Genus_id` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Genus_id` (`Genus_id`),
  CONSTRAINT `camels_ibfk_1` FOREIGN KEY (`Genus_id`) REFERENCES `packed_animals` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camels`
--

LOCK TABLES `camels` WRITE;
/*!40000 ALTER TABLE `camels` DISABLE KEYS */;
/*!40000 ALTER TABLE `camels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cats`
--

DROP TABLE IF EXISTS `cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cats` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `Commands` varchar(50) DEFAULT NULL,
  `Genus_id` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Genus_id` (`Genus_id`),
  CONSTRAINT `cats_ibfk_1` FOREIGN KEY (`Genus_id`) REFERENCES `home_animals` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cats`
--

LOCK TABLES `cats` WRITE;
/*!40000 ALTER TABLE `cats` DISABLE KEYS */;
INSERT INTO `cats` VALUES (1,'Буся','2023-01-01','Буууутя',1),(2,'Бакс','2021-01-01','толстый!',1),(3,'Сеня','2017-01-01','кскскс',1);
/*!40000 ALTER TABLE `cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dogs`
--

DROP TABLE IF EXISTS `dogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dogs` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `Commands` varchar(50) DEFAULT NULL,
  `Genus_id` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Genus_id` (`Genus_id`),
  CONSTRAINT `dogs_ibfk_1` FOREIGN KEY (`Genus_id`) REFERENCES `home_animals` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dogs`
--

LOCK TABLES `dogs` WRITE;
/*!40000 ALTER TABLE `dogs` DISABLE KEYS */;
INSERT INTO `dogs` VALUES (1,'Лорд','2021-01-01','Мордя',2),(2,'Соня','0202-02-12','чужой',2),(3,'Еся','2018-04-01','голос',2),(4,'Юта','2021-09-10',' ко мне',2);
/*!40000 ALTER TABLE `dogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donkeys`
--

DROP TABLE IF EXISTS `donkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donkeys` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `Commands` varchar(50) DEFAULT NULL,
  `Genus_id` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Genus_id` (`Genus_id`),
  CONSTRAINT `donkeys_ibfk_1` FOREIGN KEY (`Genus_id`) REFERENCES `packed_animals` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donkeys`
--

LOCK TABLES `donkeys` WRITE;
/*!40000 ALTER TABLE `donkeys` DISABLE KEYS */;
INSERT INTO `donkeys` VALUES (1,'Юлий','2020-08-10',NULL,2),(2,'Симба','2018-03-12','',2),(3,'Смит','2021-01-22','',2),(4,'Фред','2017-02-10',NULL,2);
/*!40000 ALTER TABLE `donkeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hamsters`
--

DROP TABLE IF EXISTS `hamsters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hamsters` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `Commands` varchar(50) DEFAULT NULL,
  `Genus_id` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Genus_id` (`Genus_id`),
  CONSTRAINT `hamsters_ibfk_1` FOREIGN KEY (`Genus_id`) REFERENCES `home_animals` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hamsters`
--

LOCK TABLES `hamsters` WRITE;
/*!40000 ALTER TABLE `hamsters` DISABLE KEYS */;
INSERT INTO `hamsters` VALUES (1,'Тиша','2020-10-12','',3),(2,'Хома','2021-03-12','атака сверху',3),(3,'Джо','2022-07-11','ээээээээ-эээээээ',3),(4,'Зеля','2022-05-10','дай-дай',3);
/*!40000 ALTER TABLE `hamsters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_animals`
--

DROP TABLE IF EXISTS `home_animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_animals` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Genus_name` varchar(20) DEFAULT NULL,
  `Class_id` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Class_id` (`Class_id`),
  CONSTRAINT `home_animals_ibfk_1` FOREIGN KEY (`Class_id`) REFERENCES `animal` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_animals`
--

LOCK TABLES `home_animals` WRITE;
/*!40000 ALTER TABLE `home_animals` DISABLE KEYS */;
INSERT INTO `home_animals` VALUES (1,'Кошки',2),(2,'Собаки',2),(3,'Хомяки',2);
/*!40000 ALTER TABLE `home_animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horses`
--

DROP TABLE IF EXISTS `horses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horses` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `Commands` varchar(50) DEFAULT NULL,
  `Genus_id` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Genus_id` (`Genus_id`),
  CONSTRAINT `horses_ibfk_1` FOREIGN KEY (`Genus_id`) REFERENCES `packed_animals` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horses`
--

LOCK TABLES `horses` WRITE;
/*!40000 ALTER TABLE `horses` DISABLE KEYS */;
INSERT INTO `horses` VALUES (1,'Зевс','2022-01-12','брррррр',1),(2,'Мускат','2018-06-12','бегом',1),(3,'Пивас','2015-07-22','стопээээ',1),(4,'Крюшо','2019-11-10','ойё',1);
/*!40000 ALTER TABLE `horses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packed_animals`
--

DROP TABLE IF EXISTS `packed_animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packed_animals` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Genus_name` varchar(20) DEFAULT NULL,
  `Class_id` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Class_id` (`Class_id`),
  CONSTRAINT `packed_animals_ibfk_1` FOREIGN KEY (`Class_id`) REFERENCES `animal` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packed_animals`
--

LOCK TABLES `packed_animals` WRITE;
/*!40000 ALTER TABLE `packed_animals` DISABLE KEYS */;
INSERT INTO `packed_animals` VALUES (1,'Лошади',1),(2,'Ослы',1),(3,'Верблюды',1);
/*!40000 ALTER TABLE `packed_animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yang_animal`
--

DROP TABLE IF EXISTS `yang_animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yang_animal` (
  `Name` varchar(20) DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `Commands` varchar(50) DEFAULT NULL,
  `genus` varchar(6) NOT NULL DEFAULT '',
  `Age_in_month` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yang_animal`
--

LOCK TABLES `yang_animal` WRITE;
/*!40000 ALTER TABLE `yang_animal` DISABLE KEYS */;
INSERT INTO `yang_animal` VALUES ('Зевс','2022-01-12','брррррр','Лошади',28),('Юта','2021-09-10',' ко мне','Собаки',32),('Буся','2023-01-01','Буууутя','Кошки',17),('Джо','2022-07-11','ээээээээ-эээээээ','Хомяки',22),('Зеля','2022-05-10','дай-дай','Хомяки',24);
/*!40000 ALTER TABLE `yang_animal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-06 11:13:05
