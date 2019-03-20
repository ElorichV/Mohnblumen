-- MySQL dump 10.13  Distrib 5.6.28, for Win64 (x86_64)
--
-- Host: localhost    Database: mohnblumen
-- ------------------------------------------------------
-- Server version	5.6.28-log

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
-- Current Database: `mohnblumen`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mohnblumen` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mohnblumen`;

--
-- Table structure for table `ccontacto`
--

DROP TABLE IF EXISTS `ccontacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccontacto` (
  `id_con` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del deporte de contacto',
  `nom_con` varchar(30) NOT NULL COMMENT 'Nombre del deporte de contacto',
  PRIMARY KEY (`id_con`),
  KEY `nom_con` (`nom_con`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ccontacto`
--

LOCK TABLES `ccontacto` WRITE;
/*!40000 ALTER TABLE `ccontacto` DISABLE KEYS */;
INSERT INTO `ccontacto` VALUES (2,'Box'),(5,'Capoeira'),(1,'Karate'),(3,'Kung Fu'),(4,'Taekwondo');
/*!40000 ALTER TABLE `ccontacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdeporte`
--

DROP TABLE IF EXISTS `cdeporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdeporte` (
  `id_dep` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador primario del deporte, entero auto incrementable',
  `nom_dep` varchar(30) NOT NULL COMMENT 'Nombre del deporte, maximo 30 caracteres',
  PRIMARY KEY (`id_dep`),
  KEY `nom_dep` (`nom_dep`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdeporte`
--

LOCK TABLES `cdeporte` WRITE;
/*!40000 ALTER TABLE `cdeporte` DISABLE KEYS */;
INSERT INTO `cdeporte` VALUES (6,'Basketbol'),(3,'Futbol'),(4,'Hockey'),(5,'Natacion'),(1,'Ninguno'),(2,'Voleybol');
/*!40000 ALTER TABLE `cdeporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cescenario`
--

DROP TABLE IF EXISTS `cescenario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cescenario` (
  `id_esc` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del escenario',
  `id_con` int(11) NOT NULL COMMENT 'Identificador del deporte de contacto',
  `lar_esc` double NOT NULL DEFAULT '0' COMMENT 'Medida del largo del escenario',
  `anc_esc` double NOT NULL DEFAULT '0' COMMENT 'Medida del ancho del escenario',
  `alt_esc` double NOT NULL DEFAULT '0' COMMENT 'Medida del alto del escenario',
  `rut_esc` varchar(150) NOT NULL DEFAULT 'c:' COMMENT 'Ruta del archivo del escenario',
  PRIMARY KEY (`id_esc`),
  KEY `id_con` (`id_con`),
  CONSTRAINT `cescenario_ibfk_1` FOREIGN KEY (`id_con`) REFERENCES `ccontacto` (`id_con`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cescenario`
--

LOCK TABLES `cescenario` WRITE;
/*!40000 ALTER TABLE `cescenario` DISABLE KEYS */;
INSERT INTO `cescenario` VALUES (1,1,0,0,0,'c:'),(2,2,0,0,0,'c:'),(3,3,0,0,0,'c:'),(4,4,0,0,0,'c:'),(5,5,0,0,0,'c:');
/*!40000 ALTER TABLE `cescenario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cestadistica`
--

DROP TABLE IF EXISTS `cestadistica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cestadistica` (
  `id_est` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la estadistica',
  `id_tie` int(11) NOT NULL COMMENT 'Identificador del tipo de estadistica',
  `id_usu` int(11) NOT NULL COMMENT 'Identificador del usuario',
  `val_est` double NOT NULL DEFAULT '0' COMMENT 'Valor de la estadistica',
  PRIMARY KEY (`id_est`),
  KEY `id_tie` (`id_tie`),
  KEY `id_usu` (`id_usu`),
  CONSTRAINT `cestadistica_ibfk_1` FOREIGN KEY (`id_tie`) REFERENCES `ctipest` (`id_tie`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cestadistica_ibfk_2` FOREIGN KEY (`id_usu`) REFERENCES `musuario` (`id_usu`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cestadistica`
--

LOCK TABLES `cestadistica` WRITE;
/*!40000 ALTER TABLE `cestadistica` DISABLE KEYS */;
INSERT INTO `cestadistica` VALUES (1,1,1,0),(2,2,1,0),(3,3,1,0),(4,4,1,0),(5,5,1,0),(6,1,2,0),(7,2,2,0),(8,3,2,0),(9,4,2,0),(10,5,2,0),(11,1,3,0),(12,2,3,0),(13,3,3,0),(14,4,3,0),(15,5,3,0),(16,1,4,0),(17,2,4,0),(18,3,4,0),(19,4,4,0),(20,5,4,0),(21,1,5,0),(22,2,5,0),(23,3,5,0),(24,4,5,0),(25,5,5,0),(26,1,6,0),(27,2,6,0),(28,3,6,0),(29,4,6,0),(30,5,6,0),(31,1,7,0),(32,2,7,0),(33,3,7,0),(34,4,7,0),(35,5,7,0),(41,1,9,0),(42,2,9,0),(43,3,9,0),(44,4,9,0),(45,5,9,0),(46,1,10,0),(47,2,10,0),(48,3,10,0),(49,4,10,0),(50,5,10,0);
/*!40000 ALTER TABLE `cestadistica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cgenero`
--

DROP TABLE IF EXISTS `cgenero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cgenero` (
  `id_gen` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador primario del genero, entero auto_incrementable',
  `nom_gen` varchar(7) NOT NULL COMMENT 'Nombre del genero, maximo 7 caracteres',
  PRIMARY KEY (`id_gen`),
  KEY `nom_gen` (`nom_gen`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cgenero`
--

LOCK TABLES `cgenero` WRITE;
/*!40000 ALTER TABLE `cgenero` DISABLE KEYS */;
INSERT INTO `cgenero` VALUES (1,'Hombre'),(2,'Mujer'),(3,'Otro');
/*!40000 ALTER TABLE `cgenero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chabilidad`
--

DROP TABLE IF EXISTS `chabilidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chabilidad` (
  `id_hab` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la habilidad',
  `nom_hab` varchar(30) NOT NULL COMMENT 'Nombre de la habilidad',
  PRIMARY KEY (`id_hab`),
  KEY `nom_hab` (`nom_hab`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chabilidad`
--

LOCK TABLES `chabilidad` WRITE;
/*!40000 ALTER TABLE `chabilidad` DISABLE KEYS */;
INSERT INTO `chabilidad` VALUES (4,'Aguante'),(1,'Altura'),(3,'Destreza'),(2,'Fuerza'),(7,'Medida del brazo'),(6,'Peso'),(5,'Velocidad');
/*!40000 ALTER TABLE `chabilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmodo`
--

DROP TABLE IF EXISTS `cmodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmodo` (
  `id_mod` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del modo de juego',
  `nom_mod` varchar(20) NOT NULL COMMENT 'Nombre del modo de juego',
  PRIMARY KEY (`id_mod`),
  KEY `nom_mod` (`nom_mod`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmodo`
--

LOCK TABLES `cmodo` WRITE;
/*!40000 ALTER TABLE `cmodo` DISABLE KEYS */;
INSERT INTO `cmodo` VALUES (2,'Arcade'),(1,'Historia');
/*!40000 ALTER TABLE `cmodo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmolecula`
--

DROP TABLE IF EXISTS `cmolecula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmolecula` (
  `id_mol` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador primario de la molecula, entero auto incrementable',
  `nom_mol` varchar(50) NOT NULL COMMENT 'Nombre de la molecula, maximo 50 caracteres',
  `for_mol` varchar(50) NOT NULL COMMENT 'Formula quimica de la molecula, maximo 50 caracteres',
  `pes_mol` double NOT NULL COMMENT 'Peso molecular de la molecula, valor decimal',
  PRIMARY KEY (`id_mol`),
  KEY `nom_mol` (`nom_mol`),
  KEY `for_mol` (`for_mol`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmolecula`
--

LOCK TABLES `cmolecula` WRITE;
/*!40000 ALTER TABLE `cmolecula` DISABLE KEYS */;
INSERT INTO `cmolecula` VALUES (1,'Cloruro de sodio','NaCl',58.45),(2,'Agua','H2O',18),(3,'Hidroxido de sodio','NaOH',40),(4,'Hidrogeno','H2',2),(5,'Oxigeno','O2',32),(6,'Acido clorhidrico','HCl',36.45),(7,'Cloro','Cl2',70.906),(8,'Hipoclorito de sodio','NaClO',74.45),(9,'Dioxido de carbono','CO2',44),(10,'Carbonato de sodio','Na2CO3',106),(11,'Glucosa','C6H12O6',180);
/*!40000 ALTER TABLE `cmolecula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpais`
--

DROP TABLE IF EXISTS `cpais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpais` (
  `id_pai` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del pais, entero auto incrementable',
  `nom_pai` varchar(30) NOT NULL COMMENT 'Nombre del pais, maximo 30 caracteres',
  PRIMARY KEY (`id_pai`),
  KEY `nom_pai` (`nom_pai`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpais`
--

LOCK TABLES `cpais` WRITE;
/*!40000 ALTER TABLE `cpais` DISABLE KEYS */;
INSERT INTO `cpais` VALUES (4,'China'),(5,'Corea del Norte'),(2,'Filipinas'),(6,'Francia'),(7,'Japon'),(8,'Kenia'),(3,'Mexico'),(1,'Reino Unido'),(9,'Sudafrica');
/*!40000 ALTER TABLE `cpais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cposmol`
--

DROP TABLE IF EXISTS `cposmol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cposmol` (
  `id_pom` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la posicion de las moleculas',
  `nom_pom` varchar(30) NOT NULL COMMENT 'Nombre de la posicion que hay en la reaccion',
  PRIMARY KEY (`id_pom`),
  KEY `nom_pom` (`nom_pom`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cposmol`
--

LOCK TABLES `cposmol` WRITE;
/*!40000 ALTER TABLE `cposmol` DISABLE KEYS */;
INSERT INTO `cposmol` VALUES (2,'Producto'),(1,'Reactivo');
/*!40000 ALTER TABLE `cposmol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creaccion`
--

DROP TABLE IF EXISTS `creaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creaccion` (
  `id_rea` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador primario de la reaccion, entero auto incrementable',
  `id_ven` int(11) NOT NULL COMMENT 'Identificador de la ventaja',
  `id_mol` int(11) NOT NULL COMMENT 'Identificador de la molecula',
  `id_pom` int(11) NOT NULL COMMENT 'Identificador de la posicion de la molecula',
  `coe_rea` int(11) NOT NULL DEFAULT '1' COMMENT 'Coeficiente de la molecula en esa reaccion',
  PRIMARY KEY (`id_rea`),
  KEY `id_ven` (`id_ven`),
  KEY `id_mol` (`id_mol`),
  KEY `id_pom` (`id_pom`),
  CONSTRAINT `creaccion_ibfk_1` FOREIGN KEY (`id_ven`) REFERENCES `cventaja` (`id_ven`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `creaccion_ibfk_2` FOREIGN KEY (`id_mol`) REFERENCES `cmolecula` (`id_mol`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `creaccion_ibfk_3` FOREIGN KEY (`id_pom`) REFERENCES `cposmol` (`id_pom`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creaccion`
--

LOCK TABLES `creaccion` WRITE;
/*!40000 ALTER TABLE `creaccion` DISABLE KEYS */;
INSERT INTO `creaccion` VALUES (1,1,3,1,1),(2,1,6,1,1),(3,1,1,2,1),(4,1,2,2,1),(5,2,1,1,1),(6,2,2,1,1),(7,2,7,2,1),(8,2,4,2,1),(9,2,3,2,1),(10,3,3,1,1),(11,3,7,1,1),(12,3,1,2,1),(13,3,8,2,1),(14,3,2,2,1),(15,4,3,1,1),(16,4,9,1,1),(17,4,10,2,1),(18,4,2,2,1),(19,5,11,1,1),(20,5,5,1,1),(21,5,9,2,1),(22,5,2,2,1);
/*!40000 ALTER TABLE `creaccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctipest`
--

DROP TABLE IF EXISTS `ctipest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctipest` (
  `id_tie` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del tipo de estadistica',
  `nom_tie` varchar(50) NOT NULL COMMENT 'Nombre del tipo de estadistica',
  PRIMARY KEY (`id_tie`),
  KEY `nom_tie` (`nom_tie`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctipest`
--

LOCK TABLES `ctipest` WRITE;
/*!40000 ALTER TABLE `ctipest` DISABLE KEYS */;
INSERT INTO `ctipest` VALUES (4,'Modos arcade jugados'),(3,'Modos historia jugados'),(1,'Peleas ganadas'),(2,'Peleas perdidas'),(5,'Reacciones hechas');
/*!40000 ALTER TABLE `ctipest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctipousu`
--

DROP TABLE IF EXISTS `ctipousu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctipousu` (
  `id_tip` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del tipo de usuario',
  `nom_tip` varchar(30) NOT NULL COMMENT 'Nombre del tipo de usuario',
  PRIMARY KEY (`id_tip`),
  KEY `nom_tip` (`nom_tip`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctipousu`
--

LOCK TABLES `ctipousu` WRITE;
/*!40000 ALTER TABLE `ctipousu` DISABLE KEYS */;
INSERT INTO `ctipousu` VALUES (1,'Administrador'),(2,'Estandar');
/*!40000 ALTER TABLE `ctipousu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctipper`
--

DROP TABLE IF EXISTS `ctipper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctipper` (
  `id_tipp` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del tipo de personaje',
  `nom_tipp` varchar(30) NOT NULL COMMENT 'Nombre del tipo de personaje',
  PRIMARY KEY (`id_tipp`),
  KEY `nom_tipp` (`nom_tipp`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctipper`
--

LOCK TABLES `ctipper` WRITE;
/*!40000 ALTER TABLE `ctipper` DISABLE KEYS */;
INSERT INTO `ctipper` VALUES (1,'Controlado'),(2,'Enemigo');
/*!40000 ALTER TABLE `ctipper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cventaja`
--

DROP TABLE IF EXISTS `cventaja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cventaja` (
  `id_ven` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la ventaja',
  `nom_ven` varchar(50) DEFAULT 'Ventaja' COMMENT 'Descripcion de lo que hace la ventaja',
  PRIMARY KEY (`id_ven`),
  KEY `nom_ven` (`nom_ven`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cventaja`
--

LOCK TABLES `cventaja` WRITE;
/*!40000 ALTER TABLE `cventaja` DISABLE KEYS */;
INSERT INTO `cventaja` VALUES (3,'Mas aguante'),(2,'Mas destreza'),(1,'Mas fuerza'),(5,'Mas peso'),(4,'Mas velocidad');
/*!40000 ALTER TABLE `cventaja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destbase`
--

DROP TABLE IF EXISTS `destbase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destbase` (
  `id_esb` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la estadistica base',
  `id_per` int(11) NOT NULL COMMENT 'Identificador del personaje que tiene esa estadistica',
  `id_hab` int(11) NOT NULL COMMENT 'Identificador de la habilidad',
  `val_esb` double NOT NULL DEFAULT '0' COMMENT 'Valor de la estadistica',
  PRIMARY KEY (`id_esb`),
  KEY `id_per` (`id_per`),
  KEY `id_hab` (`id_hab`),
  CONSTRAINT `destbase_ibfk_1` FOREIGN KEY (`id_per`) REFERENCES `mpersonaje` (`id_per`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `destbase_ibfk_2` FOREIGN KEY (`id_hab`) REFERENCES `chabilidad` (`id_hab`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destbase`
--

LOCK TABLES `destbase` WRITE;
/*!40000 ALTER TABLE `destbase` DISABLE KEYS */;
INSERT INTO `destbase` VALUES (1,1,1,1.77),(2,1,2,50.92),(3,1,3,0),(4,1,4,65.61),(5,1,5,30),(6,1,6,75.6),(7,1,7,0.795),(8,2,1,1.63),(9,2,2,58.44),(10,2,3,0),(11,2,4,43.23),(12,2,5,20),(13,2,6,61),(14,2,7,0.758),(15,3,1,1.78),(16,3,2,54.25),(17,3,3,0),(18,3,4,56.71),(19,3,5,25),(20,3,6,69),(21,3,7,0.776),(22,4,1,1.3),(23,4,2,8.89),(24,4,3,0),(25,4,4,87.72),(26,4,5,45),(27,4,6,40),(28,4,7,0.4),(29,5,1,1.71),(30,5,2,35.57),(31,5,3,0),(32,5,4,80.71),(33,5,5,35),(34,5,6,67),(35,5,7,0.738),(36,6,1,1.74),(37,6,2,39.04),(38,6,3,0),(39,6,4,82.65),(40,6,5,40),(41,6,6,78),(42,6,7,0.794),(43,7,1,1.56),(44,7,2,18.2),(45,7,3,0),(46,7,4,80.33),(47,7,5,35),(48,7,6,50),(49,7,7,0.631),(50,8,1,1.63),(51,8,2,48.62),(52,8,3,0),(53,8,4,29.77),(54,8,5,45),(55,8,6,59),(56,8,7,0.652),(57,9,1,1.75),(58,9,2,23.55),(59,9,3,0),(60,9,4,27.8),(61,9,5,50),(62,9,6,69),(63,9,7,0.678),(64,10,1,2.3),(65,10,2,96.2),(66,10,3,0),(67,10,4,22.96),(68,10,5,25),(69,10,6,106),(70,10,7,0.891);
/*!40000 ALTER TABLE `destbase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destdina`
--

DROP TABLE IF EXISTS `destdina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destdina` (
  `id_esd` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la estadistica dinamica',
  `id_usu` int(11) NOT NULL COMMENT 'Identificador del usuario que tiene esa estadistica dinamica',
  `id_per` int(11) NOT NULL COMMENT 'Identificador del personaje que tiene esa estadistica dinamica',
  `id_hab` int(11) NOT NULL COMMENT 'Identificador de la habilidad',
  `val_esd` double NOT NULL COMMENT 'Valor de la estadistica',
  PRIMARY KEY (`id_esd`),
  KEY `id_usu` (`id_usu`),
  KEY `id_per` (`id_per`),
  KEY `id_hab` (`id_hab`),
  CONSTRAINT `destdina_ibfk_1` FOREIGN KEY (`id_usu`) REFERENCES `musuario` (`id_usu`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `destdina_ibfk_2` FOREIGN KEY (`id_per`) REFERENCES `mpersonaje` (`id_per`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `destdina_ibfk_3` FOREIGN KEY (`id_hab`) REFERENCES `chabilidad` (`id_hab`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=701 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destdina`
--

LOCK TABLES `destdina` WRITE;
/*!40000 ALTER TABLE `destdina` DISABLE KEYS */;
INSERT INTO `destdina` VALUES (1,1,1,1,0),(2,1,1,2,0),(3,1,1,3,0),(4,1,1,4,0),(5,1,1,5,0),(6,1,1,6,0),(7,1,1,7,0),(8,1,2,1,0),(9,1,2,2,0),(10,1,2,3,0),(11,1,2,4,0),(12,1,2,5,0),(13,1,2,6,0),(14,1,2,7,0),(15,1,3,1,0),(16,1,3,2,0),(17,1,3,3,0),(18,1,3,4,0),(19,1,3,5,0),(20,1,3,6,0),(21,1,3,7,0),(22,1,4,1,0),(23,1,4,2,0),(24,1,4,3,0),(25,1,4,4,0),(26,1,4,5,0),(27,1,4,6,0),(28,1,4,7,0),(29,1,5,1,0),(30,1,5,2,0),(31,1,5,3,0),(32,1,5,4,0),(33,1,5,5,0),(34,1,5,6,0),(35,1,5,7,0),(36,1,6,1,0),(37,1,6,2,0),(38,1,6,3,0),(39,1,6,4,0),(40,1,6,5,0),(41,1,6,6,0),(42,1,6,7,0),(43,1,7,1,0),(44,1,7,2,0),(45,1,7,3,0),(46,1,7,4,0),(47,1,7,5,0),(48,1,7,6,0),(49,1,7,7,0),(50,1,8,1,0),(51,1,8,2,0),(52,1,8,3,0),(53,1,8,4,0),(54,1,8,5,0),(55,1,8,6,0),(56,1,8,7,0),(57,1,9,1,0),(58,1,9,2,0),(59,1,9,3,0),(60,1,9,4,0),(61,1,9,5,0),(62,1,9,6,0),(63,1,9,7,0),(64,1,10,1,0),(65,1,10,2,0),(66,1,10,3,0),(67,1,10,4,0),(68,1,10,5,0),(69,1,10,6,0),(70,1,10,7,0),(71,2,1,1,0),(72,2,1,2,0),(73,2,1,3,0),(74,2,1,4,0),(75,2,1,5,0),(76,2,1,6,0),(77,2,1,7,0),(78,2,2,1,0),(79,2,2,2,0),(80,2,2,3,0),(81,2,2,4,0),(82,2,2,5,0),(83,2,2,6,0),(84,2,2,7,0),(85,2,3,1,0),(86,2,3,2,0),(87,2,3,3,0),(88,2,3,4,0),(89,2,3,5,0),(90,2,3,6,0),(91,2,3,7,0),(92,2,4,1,0),(93,2,4,2,0),(94,2,4,3,0),(95,2,4,4,0),(96,2,4,5,0),(97,2,4,6,0),(98,2,4,7,0),(99,2,5,1,0),(100,2,5,2,0),(101,2,5,3,0),(102,2,5,4,0),(103,2,5,5,0),(104,2,5,6,0),(105,2,5,7,0),(106,2,6,1,0),(107,2,6,2,0),(108,2,6,3,0),(109,2,6,4,0),(110,2,6,5,0),(111,2,6,6,0),(112,2,6,7,0),(113,2,7,1,0),(114,2,7,2,0),(115,2,7,3,0),(116,2,7,4,0),(117,2,7,5,0),(118,2,7,6,0),(119,2,7,7,0),(120,2,8,1,0),(121,2,8,2,0),(122,2,8,3,0),(123,2,8,4,0),(124,2,8,5,0),(125,2,8,6,0),(126,2,8,7,0),(127,2,9,1,0),(128,2,9,2,0),(129,2,9,3,0),(130,2,9,4,0),(131,2,9,5,0),(132,2,9,6,0),(133,2,9,7,0),(134,2,10,1,0),(135,2,10,2,0),(136,2,10,3,0),(137,2,10,4,0),(138,2,10,5,0),(139,2,10,6,0),(140,2,10,7,0),(141,3,1,1,0),(142,3,1,2,0),(143,3,1,3,0),(144,3,1,4,0),(145,3,1,5,0),(146,3,1,6,0),(147,3,1,7,0),(148,3,2,1,0),(149,3,2,2,0),(150,3,2,3,0),(151,3,2,4,0),(152,3,2,5,0),(153,3,2,6,0),(154,3,2,7,0),(155,3,3,1,0),(156,3,3,2,0),(157,3,3,3,0),(158,3,3,4,0),(159,3,3,5,0),(160,3,3,6,0),(161,3,3,7,0),(162,3,4,1,0),(163,3,4,2,0),(164,3,4,3,0),(165,3,4,4,0),(166,3,4,5,0),(167,3,4,6,0),(168,3,4,7,0),(169,3,5,1,0),(170,3,5,2,0),(171,3,5,3,0),(172,3,5,4,0),(173,3,5,5,0),(174,3,5,6,0),(175,3,5,7,0),(176,3,6,1,0),(177,3,6,2,0),(178,3,6,3,0),(179,3,6,4,0),(180,3,6,5,0),(181,3,6,6,0),(182,3,6,7,0),(183,3,7,1,0),(184,3,7,2,0),(185,3,7,3,0),(186,3,7,4,0),(187,3,7,5,0),(188,3,7,6,0),(189,3,7,7,0),(190,3,8,1,0),(191,3,8,2,0),(192,3,8,3,0),(193,3,8,4,0),(194,3,8,5,0),(195,3,8,6,0),(196,3,8,7,0),(197,3,9,1,0),(198,3,9,2,0),(199,3,9,3,0),(200,3,9,4,0),(201,3,9,5,0),(202,3,9,6,0),(203,3,9,7,0),(204,3,10,1,0),(205,3,10,2,0),(206,3,10,3,0),(207,3,10,4,0),(208,3,10,5,0),(209,3,10,6,0),(210,3,10,7,0),(211,4,1,1,0),(212,4,1,2,0),(213,4,1,3,0),(214,4,1,4,0),(215,4,1,5,0),(216,4,1,6,0),(217,4,1,7,0),(218,4,2,1,0),(219,4,2,2,0),(220,4,2,3,0),(221,4,2,4,0),(222,4,2,5,0),(223,4,2,6,0),(224,4,2,7,0),(225,4,3,1,0),(226,4,3,2,0),(227,4,3,3,0),(228,4,3,4,0),(229,4,3,5,0),(230,4,3,6,0),(231,4,3,7,0),(232,4,4,1,0),(233,4,4,2,0),(234,4,4,3,0),(235,4,4,4,0),(236,4,4,5,0),(237,4,4,6,0),(238,4,4,7,0),(239,4,5,1,0),(240,4,5,2,0),(241,4,5,3,0),(242,4,5,4,0),(243,4,5,5,0),(244,4,5,6,0),(245,4,5,7,0),(246,4,6,1,0),(247,4,6,2,0),(248,4,6,3,0),(249,4,6,4,0),(250,4,6,5,0),(251,4,6,6,0),(252,4,6,7,0),(253,4,7,1,0),(254,4,7,2,0),(255,4,7,3,0),(256,4,7,4,0),(257,4,7,5,0),(258,4,7,6,0),(259,4,7,7,0),(260,4,8,1,0),(261,4,8,2,0),(262,4,8,3,0),(263,4,8,4,0),(264,4,8,5,0),(265,4,8,6,0),(266,4,8,7,0),(267,4,9,1,0),(268,4,9,2,0),(269,4,9,3,0),(270,4,9,4,0),(271,4,9,5,0),(272,4,9,6,0),(273,4,9,7,0),(274,4,10,1,0),(275,4,10,2,0),(276,4,10,3,0),(277,4,10,4,0),(278,4,10,5,0),(279,4,10,6,0),(280,4,10,7,0),(281,5,1,1,0),(282,5,1,2,0),(283,5,1,3,0),(284,5,1,4,0),(285,5,1,5,0),(286,5,1,6,0),(287,5,1,7,0),(288,5,2,1,0),(289,5,2,2,0),(290,5,2,3,0),(291,5,2,4,0),(292,5,2,5,0),(293,5,2,6,0),(294,5,2,7,0),(295,5,3,1,0),(296,5,3,2,0),(297,5,3,3,0),(298,5,3,4,0),(299,5,3,5,0),(300,5,3,6,0),(301,5,3,7,0),(302,5,4,1,0),(303,5,4,2,0),(304,5,4,3,0),(305,5,4,4,0),(306,5,4,5,0),(307,5,4,6,0),(308,5,4,7,0),(309,5,5,1,0),(310,5,5,2,0),(311,5,5,3,0),(312,5,5,4,0),(313,5,5,5,0),(314,5,5,6,0),(315,5,5,7,0),(316,5,6,1,0),(317,5,6,2,0),(318,5,6,3,0),(319,5,6,4,0),(320,5,6,5,0),(321,5,6,6,0),(322,5,6,7,0),(323,5,7,1,0),(324,5,7,2,0),(325,5,7,3,0),(326,5,7,4,0),(327,5,7,5,0),(328,5,7,6,0),(329,5,7,7,0),(330,5,8,1,0),(331,5,8,2,0),(332,5,8,3,0),(333,5,8,4,0),(334,5,8,5,0),(335,5,8,6,0),(336,5,8,7,0),(337,5,9,1,0),(338,5,9,2,0),(339,5,9,3,0),(340,5,9,4,0),(341,5,9,5,0),(342,5,9,6,0),(343,5,9,7,0),(344,5,10,1,0),(345,5,10,2,0),(346,5,10,3,0),(347,5,10,4,0),(348,5,10,5,0),(349,5,10,6,0),(350,5,10,7,0),(351,6,1,1,0),(352,6,1,2,0),(353,6,1,3,0),(354,6,1,4,0),(355,6,1,5,0),(356,6,1,6,0),(357,6,1,7,0),(358,6,2,1,0),(359,6,2,2,0),(360,6,2,3,0),(361,6,2,4,0),(362,6,2,5,0),(363,6,2,6,0),(364,6,2,7,0),(365,6,3,1,0),(366,6,3,2,0),(367,6,3,3,0),(368,6,3,4,0),(369,6,3,5,0),(370,6,3,6,0),(371,6,3,7,0),(372,6,4,1,0),(373,6,4,2,0),(374,6,4,3,0),(375,6,4,4,0),(376,6,4,5,0),(377,6,4,6,0),(378,6,4,7,0),(379,6,5,1,0),(380,6,5,2,0),(381,6,5,3,0),(382,6,5,4,0),(383,6,5,5,0),(384,6,5,6,0),(385,6,5,7,0),(386,6,6,1,0),(387,6,6,2,0),(388,6,6,3,0),(389,6,6,4,0),(390,6,6,5,0),(391,6,6,6,0),(392,6,6,7,0),(393,6,7,1,0),(394,6,7,2,0),(395,6,7,3,0),(396,6,7,4,0),(397,6,7,5,0),(398,6,7,6,0),(399,6,7,7,0),(400,6,8,1,0),(401,6,8,2,0),(402,6,8,3,0),(403,6,8,4,0),(404,6,8,5,0),(405,6,8,6,0),(406,6,8,7,0),(407,6,9,1,0),(408,6,9,2,0),(409,6,9,3,0),(410,6,9,4,0),(411,6,9,5,0),(412,6,9,6,0),(413,6,9,7,0),(414,6,10,1,0),(415,6,10,2,0),(416,6,10,3,0),(417,6,10,4,0),(418,6,10,5,0),(419,6,10,6,0),(420,6,10,7,0),(421,7,1,1,0),(422,7,1,2,0),(423,7,1,3,0),(424,7,1,4,0),(425,7,1,5,0),(426,7,1,6,0),(427,7,1,7,0),(428,7,2,1,0),(429,7,2,2,0),(430,7,2,3,0),(431,7,2,4,0),(432,7,2,5,0),(433,7,2,6,0),(434,7,2,7,0),(435,7,3,1,0),(436,7,3,2,0),(437,7,3,3,0),(438,7,3,4,0),(439,7,3,5,0),(440,7,3,6,0),(441,7,3,7,0),(442,7,4,1,0),(443,7,4,2,0),(444,7,4,3,0),(445,7,4,4,0),(446,7,4,5,0),(447,7,4,6,0),(448,7,4,7,0),(449,7,5,1,0),(450,7,5,2,0),(451,7,5,3,0),(452,7,5,4,0),(453,7,5,5,0),(454,7,5,6,0),(455,7,5,7,0),(456,7,6,1,0),(457,7,6,2,0),(458,7,6,3,0),(459,7,6,4,0),(460,7,6,5,0),(461,7,6,6,0),(462,7,6,7,0),(463,7,7,1,0),(464,7,7,2,0),(465,7,7,3,0),(466,7,7,4,0),(467,7,7,5,0),(468,7,7,6,0),(469,7,7,7,0),(470,7,8,1,0),(471,7,8,2,0),(472,7,8,3,0),(473,7,8,4,0),(474,7,8,5,0),(475,7,8,6,0),(476,7,8,7,0),(477,7,9,1,0),(478,7,9,2,0),(479,7,9,3,0),(480,7,9,4,0),(481,7,9,5,0),(482,7,9,6,0),(483,7,9,7,0),(484,7,10,1,0),(485,7,10,2,0),(486,7,10,3,0),(487,7,10,4,0),(488,7,10,5,0),(489,7,10,6,0),(490,7,10,7,0),(561,9,1,1,0),(562,9,1,2,0),(563,9,1,3,0),(564,9,1,4,0),(565,9,1,5,0),(566,9,1,6,0),(567,9,1,7,0),(568,9,2,1,0),(569,9,2,2,0),(570,9,2,3,0),(571,9,2,4,0),(572,9,2,5,0),(573,9,2,6,0),(574,9,2,7,0),(575,9,3,1,0),(576,9,3,2,0),(577,9,3,3,0),(578,9,3,4,0),(579,9,3,5,0),(580,9,3,6,0),(581,9,3,7,0),(582,9,4,1,0),(583,9,4,2,0),(584,9,4,3,0),(585,9,4,4,0),(586,9,4,5,0),(587,9,4,6,0),(588,9,4,7,0),(589,9,5,1,0),(590,9,5,2,0),(591,9,5,3,0),(592,9,5,4,0),(593,9,5,5,0),(594,9,5,6,0),(595,9,5,7,0),(596,9,6,1,0),(597,9,6,2,0),(598,9,6,3,0),(599,9,6,4,0),(600,9,6,5,0),(601,9,6,6,0),(602,9,6,7,0),(603,9,7,1,0),(604,9,7,2,0),(605,9,7,3,0),(606,9,7,4,0),(607,9,7,5,0),(608,9,7,6,0),(609,9,7,7,0),(610,9,8,1,0),(611,9,8,2,0),(612,9,8,3,0),(613,9,8,4,0),(614,9,8,5,0),(615,9,8,6,0),(616,9,8,7,0),(617,9,9,1,0),(618,9,9,2,0),(619,9,9,3,0),(620,9,9,4,0),(621,9,9,5,0),(622,9,9,6,0),(623,9,9,7,0),(624,9,10,1,0),(625,9,10,2,0),(626,9,10,3,0),(627,9,10,4,0),(628,9,10,5,0),(629,9,10,6,0),(630,9,10,7,0),(631,10,1,1,0),(632,10,1,2,0),(633,10,1,3,0),(634,10,1,4,0),(635,10,1,5,0),(636,10,1,6,0),(637,10,1,7,0),(638,10,2,1,0),(639,10,2,2,0),(640,10,2,3,0),(641,10,2,4,0),(642,10,2,5,0),(643,10,2,6,0),(644,10,2,7,0),(645,10,3,1,0),(646,10,3,2,0),(647,10,3,3,0),(648,10,3,4,0),(649,10,3,5,0),(650,10,3,6,0),(651,10,3,7,0),(652,10,4,1,0),(653,10,4,2,0),(654,10,4,3,0),(655,10,4,4,0),(656,10,4,5,0),(657,10,4,6,0),(658,10,4,7,0),(659,10,5,1,0),(660,10,5,2,0),(661,10,5,3,0),(662,10,5,4,0),(663,10,5,5,0),(664,10,5,6,0),(665,10,5,7,0),(666,10,6,1,0),(667,10,6,2,0),(668,10,6,3,0),(669,10,6,4,0),(670,10,6,5,0),(671,10,6,6,0),(672,10,6,7,0),(673,10,7,1,0),(674,10,7,2,0),(675,10,7,3,0),(676,10,7,4,0),(677,10,7,5,0),(678,10,7,6,0),(679,10,7,7,0),(680,10,8,1,0),(681,10,8,2,0),(682,10,8,3,0),(683,10,8,4,0),(684,10,8,5,0),(685,10,8,6,0),(686,10,8,7,0),(687,10,9,1,0),(688,10,9,2,0),(689,10,9,3,0),(690,10,9,4,0),(691,10,9,5,0),(692,10,9,6,0),(693,10,9,7,0),(694,10,10,1,0),(695,10,10,2,0),(696,10,10,3,0),(697,10,10,4,0),(698,10,10,5,0),(699,10,10,6,0),(700,10,10,7,0);
/*!40000 ALTER TABLE `destdina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dinventario`
--

DROP TABLE IF EXISTS `dinventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dinventario` (
  `id_inv` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del inventario, entero auto_incrementable',
  `id_mol` int(11) NOT NULL COMMENT 'Identificador de la molecula',
  `can_mol` double NOT NULL DEFAULT '100' COMMENT 'Cantidad de sustancia, valor decimal',
  `id_usu` int(11) NOT NULL COMMENT 'Identificador del usuario que tiene ese inventario',
  PRIMARY KEY (`id_inv`),
  KEY `id_mol` (`id_mol`),
  KEY `id_usu` (`id_usu`),
  CONSTRAINT `dinventario_ibfk_1` FOREIGN KEY (`id_mol`) REFERENCES `cmolecula` (`id_mol`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `dinventario_ibfk_2` FOREIGN KEY (`id_usu`) REFERENCES `musuario` (`id_usu`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dinventario`
--

LOCK TABLES `dinventario` WRITE;
/*!40000 ALTER TABLE `dinventario` DISABLE KEYS */;
INSERT INTO `dinventario` VALUES (1,1,100,1),(2,2,100,1),(3,3,100,1),(4,4,100,1),(5,5,100,1),(6,6,100,1),(7,7,100,1),(8,8,100,1),(9,9,100,1),(10,10,100,1),(11,11,100,1),(12,1,100,2),(13,2,100,2),(14,3,100,2),(15,4,100,2),(16,5,100,2),(17,6,100,2),(18,7,100,2),(19,8,100,2),(20,9,100,2),(21,10,100,2),(22,11,100,2),(23,1,100,3),(24,2,100,3),(25,3,100,3),(26,4,100,3),(27,5,100,3),(28,6,100,3),(29,7,100,3),(30,8,100,3),(31,9,100,3),(32,10,100,3),(33,11,100,3),(34,1,100,4),(35,2,100,4),(36,3,100,4),(37,4,100,4),(38,5,100,4),(39,6,100,4),(40,7,100,4),(41,8,100,4),(42,9,100,4),(43,10,100,4),(44,11,100,4),(45,1,100,5),(46,2,100,5),(47,3,100,5),(48,4,100,5),(49,5,100,5),(50,6,100,5),(51,7,100,5),(52,8,100,5),(53,9,100,5),(54,10,100,5),(55,11,100,5),(56,1,100,6),(57,2,100,6),(58,3,100,6),(59,4,100,6),(60,5,100,6),(61,6,100,6),(62,7,100,6),(63,8,100,6),(64,9,100,6),(65,10,100,6),(66,11,100,6),(67,1,100,7),(68,2,100,7),(69,3,100,7),(70,4,100,7),(71,5,100,7),(72,6,100,7),(73,7,100,7),(74,8,100,7),(75,9,100,7),(76,10,100,7),(77,11,100,7),(89,1,100,9),(90,2,100,9),(91,3,100,9),(92,4,100,9),(93,5,100,9),(94,6,100,9),(95,7,100,9),(96,8,100,9),(97,9,100,9),(98,10,100,9),(99,11,100,9),(100,1,100,10),(101,2,100,10),(102,3,100,10),(103,4,100,10),(104,5,100,10),(105,6,100,10),(106,7,100,10),(107,8,100,10),(108,9,100,10),(109,10,100,10),(110,11,100,10);
/*!40000 ALTER TABLE `dinventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mpartida`
--

DROP TABLE IF EXISTS `mpartida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mpartida` (
  `id_par` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la pelea',
  `id_usu` int(11) NOT NULL COMMENT 'identificador del usuario',
  `id_mod` int(11) NOT NULL COMMENT 'Identificador del modo de juego',
  `id_per` int(11) NOT NULL COMMENT 'Identificador del personaje',
  `id_tipp` int(11) NOT NULL COMMENT 'Identificador del tipo de personaje',
  PRIMARY KEY (`id_par`),
  KEY `id_usu` (`id_usu`),
  KEY `id_mod` (`id_mod`),
  KEY `id_per` (`id_per`),
  KEY `id_tipp` (`id_tipp`),
  CONSTRAINT `mpartida_ibfk_1` FOREIGN KEY (`id_usu`) REFERENCES `musuario` (`id_usu`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mpartida_ibfk_2` FOREIGN KEY (`id_mod`) REFERENCES `cmodo` (`id_mod`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mpartida_ibfk_3` FOREIGN KEY (`id_per`) REFERENCES `mpersonaje` (`id_per`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mpartida_ibfk_4` FOREIGN KEY (`id_tipp`) REFERENCES `ctipper` (`id_tipp`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mpartida`
--

LOCK TABLES `mpartida` WRITE;
/*!40000 ALTER TABLE `mpartida` DISABLE KEYS */;
/*!40000 ALTER TABLE `mpartida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mpersonaje`
--

DROP TABLE IF EXISTS `mpersonaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mpersonaje` (
  `id_per` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del personaje, entero auto incrementable',
  `nom_per` varchar(30) NOT NULL COMMENT 'Nombre del personaje, maximo 30 caracteres',
  `ape_per` varchar(30) NOT NULL COMMENT 'Apellido del personaje, maximo 30 caracteres',
  `id_pai` int(11) NOT NULL COMMENT 'identificador del pais',
  `id_con` int(11) NOT NULL COMMENT 'Identificador del deporte de contacto',
  `id_gen` int(11) NOT NULL COMMENT 'Identificador del genero',
  `des_per` text COMMENT 'Breve descripcion del personaje',
  PRIMARY KEY (`id_per`),
  KEY `id_pai` (`id_pai`),
  KEY `id_con` (`id_con`),
  KEY `id_gen` (`id_gen`),
  CONSTRAINT `mpersonaje_ibfk_1` FOREIGN KEY (`id_pai`) REFERENCES `cpais` (`id_pai`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `mpersonaje_ibfk_2` FOREIGN KEY (`id_con`) REFERENCES `ccontacto` (`id_con`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `mpersonaje_ibfk_3` FOREIGN KEY (`id_gen`) REFERENCES `cgenero` (`id_gen`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mpersonaje`
--

LOCK TABLES `mpersonaje` WRITE;
/*!40000 ALTER TABLE `mpersonaje` DISABLE KEYS */;
INSERT INTO `mpersonaje` VALUES (1,'Neah','Campbello',1,1,1,NULL),(2,'Agaraki','Tatsuo',2,1,2,NULL),(3,'Joey El Ruedas','Rico',3,2,1,NULL),(4,'Miranda','Walker',1,2,2,NULL),(5,'Li','Chang',4,3,2,NULL),(6,'Seung','Mirazaki',5,3,1,NULL),(7,'Joseph','Pierre',6,4,1,NULL),(8,'Yumiko','Aikawa',7,4,2,NULL),(9,'Gathoni','Esiankiki',8,5,2,NULL),(10,'Zareb','Emeka',9,5,1,NULL);
/*!40000 ALTER TABLE `mpersonaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musuario`
--

DROP TABLE IF EXISTS `musuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musuario` (
  `id_usu` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador primario del usuario, entero auto incrementable',
  `nom_usu` varchar(40) NOT NULL COMMENT 'Nombre del usuario, maximo 40 caracteres',
  `app_usu` varchar(30) NOT NULL COMMENT 'Apellido paterno, maximo 30 caracteres',
  `apm_usu` varchar(30) NOT NULL COMMENT 'Apellido materno, maximo 30 caracteres',
  `mail_usu` varchar(50) NOT NULL COMMENT 'Correo del usuario, maximo 50 caracteres',
  `nac_usu` date NOT NULL COMMENT 'Fecha de nacimiento del usuario, YYYY-MM-DD',
  `id_gen` int(11) NOT NULL COMMENT 'Identificador del genero',
  `curp_usu` varchar(19) NOT NULL COMMENT 'CURP del usuario, maximo 18 caracteres',
  `id_dep` int(11) DEFAULT NULL COMMENT 'Identificador del usuario',
  `nic_usu` varchar(15) NOT NULL COMMENT 'Nickname del usuario, maximo 15 caracteres',
  `pas_usu` varchar(15) NOT NULL COMMENT 'Password del usuario, maximo 15 caracteres',
  `id_tip` int(11) NOT NULL COMMENT 'Identificador del tipo de usuario',
  PRIMARY KEY (`id_usu`),
  KEY `curp_usu` (`curp_usu`),
  KEY `id_gen` (`id_gen`),
  KEY `id_dep` (`id_dep`),
  KEY `id_tip` (`id_tip`),
  CONSTRAINT `musuario_ibfk_1` FOREIGN KEY (`id_gen`) REFERENCES `cgenero` (`id_gen`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `musuario_ibfk_2` FOREIGN KEY (`id_dep`) REFERENCES `cdeporte` (`id_dep`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `musuario_ibfk_3` FOREIGN KEY (`id_tip`) REFERENCES `ctipousu` (`id_tip`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musuario`
--

LOCK TABLES `musuario` WRITE;
/*!40000 ALTER TABLE `musuario` DISABLE KEYS */;
INSERT INTO `musuario` VALUES (1,'Josue','Martinez','Roldan','daxter_911@hotmail.com','1999-06-01',1,'MARJ990601HMCRLS00',1,'UG40','123456',1),(2,'Dafne Alejandra','Ramirez','Zarate','dafne@hotmail.com','1999-01-30',2,'RAZD990130MDFMRF00',1,'Alexa','234567',1),(3,'Jessica','Flores','Alvarez','jessica@hotmail.com','1998-11-02',2,'FOAJ981102MDFLLS00',2,'Jess','345678',1),(4,'Jose Daniel','Escorcia','Peña','daniel@hotmail.com','1997-12-06',1,'EEPD971206HDFSÑN00',3,'Daniel','456789',1),(5,'Carlos Brighton','Saldaña','Ortiz','brighton@hotmail.com','1999-06-17',1,'SAOC990617HDFLRR00',4,'El Brainsto','567890',2),(6,'Axel Alberto','Linares','Lorrabaquio','axel@hotmail.com','1999-06-09',1,'LILA990609HDFNRX00',5,'Axelito','678901',2),(7,'Alejandra','Ugalde','Guerrero','pandiitthaa@hotmail.com','1998-11-27',2,'UAGI981127MDFGRV05',5,'Aleey','2611',2),(9,'Aleksandrina','Blogorodna','Rosmach','hliuh','1999-01-01',2,'FUY',1,'Alexan','fsafcs',2),(10,'Llala','Lala','La','sgsuig','1997-01-20',2,'icwgifcuwd',6,'Lalalala123','1234567890000',2);
/*!40000 ALTER TABLE `musuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER crear_recursos AFTER INSERT ON musuario FOR EACH ROW
BEGIN
	call agregar_inventario (new.id_usu);
	call agregar_estadisticas (new.id_usu);
	call agregar_estadinamica (new.id_usu);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-15 15:09:34
