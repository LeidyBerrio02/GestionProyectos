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
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyecto` (
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
  PRIMARY KEY (`idProyecto`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
INSERT INTO `proyecto` VALUES (1,'Mueve Sural','Desarrollo',4567800,'Carlos Andres Quintana','2 Meses','2019-02-01','2019-03-01','2019-05-01','Juliana Betancur Acurrao','Creado'),(3,'Proyecto Q.A','Diseño',6000000,'Mara Bermudez Jimnez','1 Meses','2019-02-01','2019-03-01','2019-03-01','Juliana Betancur Acurrao','Cancelado'),(4,'Somos M.A.B','Testing',4560000,'Ana Maria Quintero','8 Meses','2019-01-31',NULL,NULL,'Ana Maria Quintero','Creado'),(5,'Proyecto A.B.C','Fabrica de Software',5670000,'Carlos Andres Quintana','3 Semanas','2020-12-01','2020-12-10','2021-01-08','Jose Julian Muñoz','En proceso'),(6,'Execute .IA','Fabrica de Software',5670000,'Carlos Andres Quintana','3 Semanas','2020-12-01','2020-12-10','2021-01-08','Jose Julian Muñoz','En proceso'),(21,'Nuevo proyecto PruebaQ','KONECTA',678900,'Luis Restrepo Velez','1 mes','2020-12-21',NULL,NULL,'Maria Juliana Sanchez','Suspendido');
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyectoactualizado`
--

DROP TABLE IF EXISTS `proyectoactualizado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyectoactualizado` (
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectoactualizado`
--

LOCK TABLES `proyectoactualizado` WRITE;
/*!40000 ALTER TABLE `proyectoactualizado` DISABLE KEYS */;
INSERT INTO `proyectoactualizado` VALUES (4,'Somos M.A','Testing',4560000,'Ana Maria Quintero','8 Meses','2019-02-01','2019-03-01','2019-01-01','Ana Maria Quintero','Creado','2020-12-14'),(5,'Proyecto A.A.A','Fabrica de Software',5670000,'Carlos Andres Quintana','3 Semanas','2020-12-01','2020-12-10','2021-01-08','Jose Julian Muñoz','En proceso','2020-12-14'),(6,'Proyecto A.A.A','Fabrica de Software',5670000,'Carlos Andres Quintana','3 Semanas','2020-12-01','2020-12-10','2021-01-08','Jose Julian Muñoz','En proceso',NULL),(21,'Nuevo proyecto PruebaQ','kONECTA',678900,'Luis Restrepo Velez','1 mes','2020-12-22','2020-12-16','2020-12-24','Maria Juliana Sanchez','Suspendido','2020-12-14');
/*!40000 ALTER TABLE `proyectoactualizado` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `idRol` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  PRIMARY KEY (`idRol`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `rol_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'ROLE_ADMIN',1),(2,'ROLE_USER',1),(3,'ROLE_USER',2);
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUser` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'admin','$2a$10$Asy7YP5PtRmXelhnTorwfOr/QZyEATzzVvs70UYYZ5HWtgN/.sCiy',1),(2,'user','$2a$10$1lhdVp1W4HM7dPVZ2U1XdOP9HUk0ZM12S6h/e8pV/hhO5HZ.SEzRO',1),(3,'leidy','$2a$10$Asy7YP5PtRmXelhnTorwfOr/QZyEATzzVvs70UYYZ5HWtgN/.sCiy',0);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15  1:33:23
