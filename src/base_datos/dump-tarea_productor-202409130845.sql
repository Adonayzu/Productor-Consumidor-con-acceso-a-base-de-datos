-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: tarea_productor
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `consumido`
--

DROP TABLE IF EXISTS `consumido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_completo` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_Productor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_Consumidor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumido`
--

LOCK TABLES `consumido` WRITE;
/*!40000 ALTER TABLE `consumido` DISABLE KEYS */;
INSERT INTO `consumido` VALUES (149,'Alejandro Ramírez','Productor 2','Consumidor 2'),(150,'Juan Martínez','Productor 1','Consumidor 1'),(151,'Felipe Guerrero','Productor 3','Consumidor 2'),(152,'María Suárez','Productor 1','Consumidor 1'),(153,'Juan Pérez','Productor 3','Consumidor 2'),(154,'José Ortega','Productor 1','Consumidor 1'),(155,'Gabriela Moreno','Productor 2','Consumidor 2'),(156,'Ana Delgado','Productor 1','Consumidor 1'),(157,'María González','Productor 3','Consumidor 2'),(158,'José López','Productor 3','Consumidor 1'),(159,'Rodrigo Jiménez','Productor 2','Consumidor 2'),(160,'Luis Castro','Productor 1','Consumidor 1'),(161,'Ana Martínez','Productor 3','Consumidor 2'),(162,'Valentina Hernández','Productor 2','Consumidor 1'),(163,'Carmen Romero','Productor 1','Consumidor 2'),(164,'Luis Rodríguez','Productor 3','Consumidor 1'),(165,'Andrés Martínez','Productor 2','Consumidor 2'),(166,'Pedro Reyes','Productor 1','Consumidor 1'),(167,'Mariana González','Productor 2','Consumidor 2'),(168,'Carmen Hernández','Productor 3','Consumidor 1'),(169,'Laura Silva','Productor 1','Consumidor 2'),(170,'Pablo López','Productor 2','Consumidor 1'),(171,'Claudia Fernández','Productor 2','Consumidor 2'),(172,'Jorge Rodríguez','Productor 2','Consumidor 1'),(173,'Pedro Garcia','Productor 3','Consumidor 2'),(174,'Miguel Peña','Productor 1','Consumidor 1'),(175,'Laura Fernández','Productor 3','Consumidor 2'),(176,'Miguel Ruiz','Productor 3','Consumidor 1'),(177,'Laura García','Productor 2','Consumidor 2'),(178,'Rosa Jiménez','Productor 3','Consumidor 1'),(179,'Rosa Aguilar','Productor 1','Consumidor 2'),(180,'Antonio Moreno','Productor 3','Consumidor 1'),(181,'Elena Muñoz','Productor 3','Consumidor 2'),(182,'Enrique Ruiz','Productor 2','Consumidor 1'),(183,'Francisco Álvarez','Productor 3','Consumidor 2'),(184,'Antonio Montes','Productor 1','Consumidor 1'),(185,'Patricia Navarro','Productor 2','Consumidor 2'),(186,'Isabel Ramírez','Productor 3','Consumidor 1'),(187,'Javier Romero','Productor 3','Consumidor 2'),(188,'Rafael Torres','Productor 2','Consumidor 1'),(189,'Elena Escobar','Productor 1','Consumidor 2'),(190,'Teresa Navarro','Productor 3','Consumidor 1'),(191,'Francisco Salazar','Productor 1','Consumidor 2'),(192,'Diego Torres','Productor 3','Consumidor 1'),(193,'Silvia Gutiérrez','Productor 2','Consumidor 2'),(194,'Mario Domínguez','Productor 2','Consumidor 1'),(195,'Patricia Gutiérrez','Productor 3','Consumidor 2'),(196,'Andrés Domínguez','Productor 3','Consumidor 1'),(197,'Isabel Valencia','Productor 1','Consumidor 2'),(198,'Javier Fuentes','Productor 1','Consumidor 1'),(199,'Marta Ramos','Productor 3','Consumidor 2'),(200,'Teresa Ramos','Productor 2','Consumidor 1'),(201,'Sergio Vázquez','Productor 3','Consumidor 2'),(202,'Luis Vázquez','Productor 2','Consumidor 1'),(203,'Teresa Espinoza','Productor 1','Consumidor 2'),(204,'Claudia Gil','Productor 3','Consumidor 1'),(205,'Alberto Blanco','Productor 3','Consumidor 2'),(206,'Diego Mejía','Productor 1','Consumidor 1'),(207,'Carmen Gil','Productor 2','Consumidor 2'),(208,'Fernando Blanco','Productor 2','Consumidor 1'),(209,'Julia Molina','Productor 3','Consumidor 2'),(210,'Patricia Miranda','Productor 1','Consumidor 1'),(211,'Daniel Morales','Productor 3','Consumidor 2'),(212,'Andrés Valdez','Productor 1','Consumidor 1'),(213,'Beatriz Molina','Productor 2','Consumidor 2'),(214,'Silvia Suárez','Productor 3','Consumidor 1'),(215,'Fernando Ortega','Productor 3','Consumidor 2'),(216,'Sergio Morales','Productor 2','Consumidor 1'),(217,'Marta Arroyo','Productor 1','Consumidor 2'),(218,'Sergio Palacios','Productor 1','Consumidor 1'),(219,'Alicia Delgado','Productor 3','Consumidor 2'),(220,'Alicia Suárez','Productor 2','Consumidor 1'),(221,'Raúl Castro','Productor 3','Consumidor 2'),(222,'Beatriz Ortiz','Productor 3','Consumidor 1'),(223,'Daniel Ortega','Productor 2','Consumidor 2'),(224,'Claudia Chávez','Productor 1','Consumidor 1'),(225,'Alberto Padilla','Productor 1','Consumidor 2'),(226,'Marta Delgado','Productor 2','Consumidor 1'),(227,'Carlos Rubio','Productor 3','Consumidor 2'),(228,'Julia Quintero','Productor 1','Consumidor 1'),(229,'Juan Castro','Productor 2','Consumidor 2'),(230,'Daniel Acosta','Productor 1','Consumidor 1'),(231,'Lorena Marín','Productor 3','Consumidor 2'),(232,'Adrián Sanz','Productor 3','Consumidor 1'),(233,'Ana Ortiz','Productor 2','Consumidor 2'),(234,'Sonia Iglesias','Productor 3','Consumidor 1'),(235,'Silvia Velázquez','Productor 1','Consumidor 2'),(236,'Carlos Rubio','Productor 2','Consumidor 1'),(237,'Óscar Medina','Productor 3','Consumidor 2'),(238,'Lorena Marín','Productor 2','Consumidor 1'),(239,'Adrián Sanz','Productor 2','Consumidor 2'),(240,'Natalia Nuñez','Productor 3','Consumidor 1'),(241,'Iván Garrido','Productor 3','Consumidor 2'),(242,'Sonia Iglesias','Productor 2','Consumidor 1'),(243,'Fernando Solís','Productor 1','Consumidor 2'),(244,'Sara Castillo','Productor 3','Consumidor 1'),(245,'Alicia Montoya','Productor 1','Consumidor 2'),(246,'Óscar Medina','Productor 2','Consumidor 1'),(247,'Natalia Nuñez','Productor 2','Consumidor 2'),(248,'Raúl Cardenas','Productor 1','Consumidor 1'),(249,'Víctor Cortés','Productor 3','Consumidor 2'),(250,'Iván Garrido','Productor 2','Consumidor 1'),(251,'Paula Lozano','Productor 3','Consumidor 2'),(252,'Sara Castillo','Productor 2','Consumidor 1'),(253,'Beatriz Escamilla','Productor 1','Consumidor 2'),(254,'Hugo Guerrero','Productor 3','Consumidor 1'),(255,'Irene Santos','Productor 3','Consumidor 2'),(256,'Marcos Cano','Productor 3','Consumidor 1'),(257,'Carlos Galván','Productor 1','Consumidor 2'),(258,'Lorena Arellano','Productor 1','Consumidor 1'),(259,'Nuria Prieto','Productor 3','Consumidor 2'),(260,'Rubén Cruz','Productor 3','Consumidor 1'),(261,'Víctor Cortés','Productor 2','Consumidor 2'),(262,'Adrián Esquivel','Productor 1','Consumidor 1'),(263,'Eva Méndez','Productor 3','Consumidor 2'),(264,'Sonia Barrios','Productor 1','Consumidor 1'),(265,'David Calvo','Productor 3','Consumidor 2'),(266,'Paula Lozano','Productor 2','Consumidor 1'),(267,'Óscar Tapia','Productor 1','Consumidor 2'),(268,'Natalia Correa','Productor 1','Consumidor 1'),(269,'Ángela Vidal','Productor 3','Consumidor 2'),(270,'Jorge Gallego','Productor 3','Consumidor 1'),(271,'Hugo Guerrero','Productor 2','Consumidor 1'),(272,'Iván Aranda','Productor 1','Consumidor 1'),(273,'Irene Santos','Productor 2','Consumidor 1'),(274,'Marcos Cano','Productor 2','Consumidor 1'),(275,'Sara Valle','Productor 1','Consumidor 1'),(276,'Nuria Prieto','Productor 2','Consumidor 1'),(277,'Víctor Muñoz','Productor 1','Consumidor 1'),(278,'Paula Durán','Productor 1','Consumidor 1'),(279,'Hugo Olivares','Productor 1','Consumidor 1'),(280,'Rubén Cruz','Productor 2','Consumidor 1'),(281,'Irene Navarrete','Productor 1','Consumidor 1'),(282,'Eva Méndez','Productor 2','Consumidor 1'),(283,'Marcos Del Río','Productor 1','Consumidor 1'),(284,'David Calvo','Productor 2','Consumidor 1'),(285,'Ángela Vidal','Productor 2','Consumidor 1'),(286,'Nuria Galindo','Productor 1','Consumidor 1'),(287,'Jorge Gallego','Productor 2','Consumidor 1'),(288,'Rubén Alvarado','Productor 1','Consumidor 1'),(289,'Rocío Herrera','Productor 2','Consumidor 1'),(290,'Eva Segura','Productor 1','Consumidor 1'),(291,'Manuel Cabrera','Productor 2','Consumidor 1'),(292,'David Robles','Productor 1','Consumidor 1'),(293,'Elena Escobar','Productor 2','Consumidor 1'),(294,'Ángela Quintana','Productor 1','Consumidor 1'),(295,'Jorge Escobar','Productor 1','Consumidor 1'),(296,'Francisco Salazar','Productor 2','Consumidor 1'),(297,'Rocío Valle','Productor 1','Consumidor 1'),(298,'Isabel Valencia','Productor 2','Consumidor 1');
/*!40000 ALTER TABLE `consumido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'tarea_productor'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-13  8:45:33
