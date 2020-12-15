-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: pruebafinal
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `proyectoeliminado`
--

DROP TABLE IF EXISTS `proyectoeliminado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyectoeliminado` (
  `idProyecto` int NOT NULL AUTO_INCREMENT,
  `nombreProyecto` varchar(100) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `presupuesto` double DEFAULT NULL,
  `responsable` varchar(45) DEFAULT NULL,
  `duracion` varchar(20) DEFAULT NULL,
  `fechaCreacion` date DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `usuarioCreador` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `fechaModificacion` date DEFAULT NULL,
  PRIMARY KEY (`idProyecto`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectoeliminado`
--

LOCK TABLES `proyectoeliminado` WRITE;
/*!40000 ALTER TABLE `proyectoeliminado` DISABLE KEYS */;
INSERT INTO `proyectoeliminado` VALUES (2,'Muevete Bank','Base de datos',7645324,'Carlos Andres Quintana','5 Meses','2020-02-01','2020-03-01','2020-05-01','Ana Maria Quintero','Finalizado','2020-12-14'),(6,'Proyecto A.A.A','Fabrica de Software',5670000,'Carlos Andres Quintana','3 Semanas','2020-12-01','2020-12-10','2021-01-08','Jose Julian Muñoz','En proceso','2020-12-14'),(12,'Mueve Sural','Desarrollo',4567800,'Carlos Andres Quintana','2 Meses','2019-02-01','2019-03-01','2019-05-01','Juliana Betancur Acurrao','Creado',NULL),(20,'Mueve Sural','Desarrollo',4567800,'Carlos Andres Quintana','2 Meses','2019-02-01','2019-03-01','2019-05-01','Juliana Betancur Acurrao','Creado','2020-12-14');
/*!40000 ALTER TABLE `proyectoeliminado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-14 23:31:40
