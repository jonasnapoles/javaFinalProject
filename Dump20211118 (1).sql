-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: streamingMedia
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.21.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Categories`
--

DROP TABLE IF EXISTS `Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Categories` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(60) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categories`
--

LOCK TABLES `Categories` WRITE;
/*!40000 ALTER TABLE `Categories` DISABLE KEYS */;
INSERT INTO `Categories` VALUES (1,'Ação'),(2,'Aventura'),(3,'Comédia'),(4,'Biográfico '),(5,'Romance'),(6,'Drama'),(7,'Fantasia'),(8,'Musical'),(9,'Ficção Científica'),(10,'Suspense'),(11,'Terror');
/*!40000 ALTER TABLE `Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Countries`
--

DROP TABLE IF EXISTS `Countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Countries` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(60) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Countries`
--

LOCK TABLES `Countries` WRITE;
/*!40000 ALTER TABLE `Countries` DISABLE KEYS */;
INSERT INTO `Countries` VALUES (1,'Afeganistão'),(2,'África do sul'),(3,'Albânia'),(4,'Alemanha'),(5,'Andorra'),(6,'Angola'),(7,'Antígua e Barbuda'),(8,'Árabia Saudita'),(9,'Argélia'),(10,'Argentina'),(11,'Arménia'),(12,'Austrália'),(13,'Áustria'),(14,' Azerbaijão'),(15,'Bahamas'),(16,'Bangladesh'),(17,'Barbados'),(18,'Barém'),(19,'Bélgica'),(20,'Belize'),(21,'Benim'),(22,'Bielorrússia'),(23,'Bolívia'),(24,'Botsuana '),(25,'Brasil'),(26,'Brunei'),(27,'Bulgária'),(28,'Burquina Fasso'),(29,'Burúndi'),(30,'Butão'),(31,'Cabo Verde'),(32,'Camarões'),(33,'Camboja'),(34,'Canadá'),(35,'Cazaquistão'),(36,'Cazaquistão'),(37,'Chile'),(38,'China'),(39,'Hongkong'),(40,'Macau'),(41,'Dinamarca'),(42,'Espanha'),(43,'Finlândia'),(44,'França'),(45,'Grécia'),(46,'Islândia'),(47,'Itália'),(48,'Luxemburgo'),(49,'Marrocos'),(50,'Nova Zelândia'),(51,'Portugal'),(52,'Reino Unido'),(53,'Irlanda do Norte'),(54,'Irlanda'),(55,'Escócia'),(56,'Suíça');
/*!40000 ALTER TABLE `Countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movies`
--

DROP TABLE IF EXISTS `Movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Movies` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) DEFAULT NULL,
  `Year` year NOT NULL,
  `Duretion` time DEFAULT NULL,
  `Category_id` int DEFAULT NULL,
  `Country_id` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Category_id` (`Category_id`),
  KEY `Country_id` (`Country_id`),
  CONSTRAINT `Movies_ibfk_1` FOREIGN KEY (`Category_id`) REFERENCES `Categories` (`ID`),
  CONSTRAINT `Movies_ibfk_2` FOREIGN KEY (`Country_id`) REFERENCES `Countries` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movies`
--

LOCK TABLES `Movies` WRITE;
/*!40000 ALTER TABLE `Movies` DISABLE KEYS */;
INSERT INTO `Movies` VALUES (1,'O Senhor dos Anéis: A Irmandade do Anel',2001,'02:59:00',2,52);
/*!40000 ALTER TABLE `Movies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-18  1:38:53
