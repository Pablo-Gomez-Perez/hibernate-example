-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: ventas
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `costumer`
--

DROP TABLE IF EXISTS `costumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `costumer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `costumer_id` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costumer`
--

LOCK TABLES `costumer` WRITE;
/*!40000 ALTER TABLE `costumer` DISABLE KEYS */;
INSERT INTO `costumer` VALUES (1,'C12345','John Doe','California','Los Angeles','1234567890','john.doe@example.com',0),(2,'C67890','Jane Smith','New York','New York City','9876543210','jane.smith@example.com',0),(3,'C24680','Michael Johnson','Texas','Houston','5551234567','michael.johnson@example.com',0),(4,'C11111','Alice Johnson','Texas','Austin','5559876543','alice.johnson@example.com',0),(5,'C22222','Robert Davis','Florida','Miami','5555555555','robert.davis@example.com',0),(6,'C33333','Sarah Clark','California','San Francisco','5552222222','sarah.clark@example.com',0),(7,'C44444','David Smith','New York','Buffalo','5553333333','david.smith@example.com',0),(8,'C55555','Emily Davis','Texas','Dallas','5554444444','emily.davis@example.com',0),(9,'C66666','James Johnson','California','San Diego','5556666666','james.johnson@example.com',0),(10,'C77777','Lauren Brown','Florida','Orlando','5557777777','lauren.brown@example.com',0),(11,'C88888','Andrew Lee','New York','Albany','5558888888','andrew.lee@example.com',0),(12,'C99999','Olivia Martinez','Texas','San Antonio','5559999999','olivia.martinez@example.com',0),(13,'C10101','Daniel Robinson','California','Sacramento','5551010101','daniel.robinson@example.com',0),(14,'C20202','Sophia Davis','Florida','Tampa','5552020202','sophia.davis@example.com',0),(15,'C30303','Liam Johnson','New York','Rochester','5553030303','liam.johnson@example.com',0),(16,'2365987','Pablo Gomez','Chiapas','Tuxtla','9871237465','emailfake@fakemail.com',0),(17,'23649187','Pablo Gomez 2','Chiapas','Tuxtla','9871237465','emailfake@fakemail.com',0);
/*!40000 ALTER TABLE `costumer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-24 23:37:59
