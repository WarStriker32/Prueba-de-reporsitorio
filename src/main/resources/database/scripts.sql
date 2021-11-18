CREATE DATABASE  IF NOT EXISTS `proyecto_lp2_t4qb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `proyecto_lp2_t4qb`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto_lp2_t4qb
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `pension`
--

DROP TABLE IF EXISTS `pension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pension` (
  `Code` int NOT NULL AUTO_INCREMENT,
  `Name` char(3) NOT NULL,
  PRIMARY KEY (`Code`),
  UNIQUE KEY `Id_UNIQUE` (`Code`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pension`
--

LOCK TABLES `pension` WRITE;
/*!40000 ALTER TABLE `pension` DISABLE KEYS */;
INSERT INTO `pension` VALUES (1,'AFP'),(2,'ONP');
/*!40000 ALTER TABLE `pension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `Code` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(35) NOT NULL,
  PRIMARY KEY (`Code`),
  UNIQUE KEY `Name_UNIQUE` (`Name`),
  UNIQUE KEY `Id_UNIQUE` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (3,'Analista de sistemas'),(1,'Operario de mantenimiento'),(2,'Supervisor de mantenimiento'),(4,'Supervisor de sistemas');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `Code` int NOT NULL AUTO_INCREMENT,
  `WorkerId` int NOT NULL,
  `Month` int NOT NULL,
  `Year` int NOT NULL,
  `MedicalRestDays` int NOT NULL,
  `Absence` int NOT NULL,
  `Holidays` int NOT NULL,
  `SuspensionDays` int NOT NULL,
  `MinutesLate` int NOT NULL,
  `EarlyMins` int NOT NULL,
  `ExtraHours25` int NOT NULL,
  `ExtraHours35` int NOT NULL,
  `ExtraHours100` int NOT NULL,
  PRIMARY KEY (`Code`),
  UNIQUE KEY `Code_UNIQUE` (`Code`),
  KEY `WorkerId` (`WorkerId`),
  CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`WorkerId`) REFERENCES `worker` (`IDnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher`
--

DROP TABLE IF EXISTS `voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voucher` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `WorkerId` int NOT NULL,
  `Month` int NOT NULL,
  `Year` int NOT NULL,
  `MinimumWage` double NOT NULL,
  `MedicalRest` double NOT NULL,
  `Holidays` double NOT NULL,
  `HouseholdAllowance` double NOT NULL,
  `ExtraHours25` double NOT NULL,
  `ExtraHours35` double NOT NULL,
  `ExtraHours100` double NOT NULL,
  `Transport` double NOT NULL,
  `Feeding` double NOT NULL,
  `Reward` double NOT NULL,
  `Bonus` double NOT NULL,
  `Earning` double NOT NULL,
  `Pension` double NOT NULL,
  `Judicial` double NOT NULL,
  `EPS` double NOT NULL,
  `Tardiness` double NOT NULL,
  `EarlyDeparture` double NOT NULL,
  `Absence` double NOT NULL,
  `AdvanceSalary` double NOT NULL,
  `AdvanceReward` double NOT NULL,
  `AdvanceHolidays` double NOT NULL,
  `Discount` double NOT NULL,
  `EsSalud` double NOT NULL,
  `SCTR` double NOT NULL,
  `LifeInsurance` double NOT NULL,
  `EmployerContributions` double NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_UNIQUE` (`Id`),
  KEY `WorkerId` (`WorkerId`),
  CONSTRAINT `voucher_ibfk_1` FOREIGN KEY (`WorkerId`) REFERENCES `worker` (`IDnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher`
--

LOCK TABLES `voucher` WRITE;
/*!40000 ALTER TABLE `voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worker`
--

DROP TABLE IF EXISTS `worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worker` (
  `IDnum` int NOT NULL,
  `Names` varchar(40) NOT NULL,
  `Surname` varchar(40) NOT NULL,
  `Gender` enum('Male','Female') NOT NULL,
  `Birthday` date NOT NULL,
  `MobileNum` int NOT NULL,
  `Address` varchar(40) NOT NULL,
  `EntryDate` date NOT NULL,
  `TerminationDate` date DEFAULT NULL,
  `PositionId` int NOT NULL,
  `Salary` double NOT NULL,
  `PensionId` int NOT NULL,
  `MinorChildren` int NOT NULL,
  `EPS` tinyint(1) NOT NULL,
  `JudicialRetention` int NOT NULL,
  `EmailAddress` varchar(255) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(255) NOT NULL,
  PRIMARY KEY (`IDnum`),
  UNIQUE KEY `IDnum_UNIQUE` (`IDnum`),
  UNIQUE KEY `MobileNum_UNIQUE` (`MobileNum`),
  UNIQUE KEY `Username_UNIQUE` (`Username`),
  KEY `PensionId` (`PensionId`),
  KEY `worker_ibfk_1` (`PositionId`),
  CONSTRAINT `worker_ibfk_1` FOREIGN KEY (`PositionId`) REFERENCES `position` (`Code`),
  CONSTRAINT `worker_ibfk_2` FOREIGN KEY (`PensionId`) REFERENCES `pension` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker`
--

LOCK TABLES `worker` WRITE;
/*!40000 ALTER TABLE `worker` DISABLE KEYS */;
/*!40000 ALTER TABLE `worker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'proyecto_lp2_t4qb'
--
/*!50003 DROP PROCEDURE IF EXISTS `GetAllWorkers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllWorkers`()
BEGIN
	SELECT
		W.IDnum AS 'Número de DNI',
		W.Names AS 'Nombres',
		W.Surname AS 'Apellidos',
		TIMESTAMPDIFF(YEAR, W.Birthday, CURDATE()) AS 'Edad',
		W.Gender AS 'Género',
		W.Birthday AS 'Fecha de nacimiento',
		W.MobileNum AS 'Número de móvil',
		W.Address AS 'Dirección',
		W.EntryDate AS  'Fecha de ingreso',
		W.TerminationDate AS 'Fecha de cese',
		Po.Name AS 'Puesto',
		W.Salary AS 'Salary',
		Pe.Name AS 'Pensión',
		W.MinorChildren AS 'Hijos menores'
	FROM Worker AS W
	INNER JOIN Position AS Po ON W.PositionId = Po.Id
	INNER JOIN Pension AS Pe ON W.PensionId = Pe.Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetWorkerById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetWorkerById`(idNum INT)
BEGIN
	SELECT
		W.IDnum,
		W.Names,
		W.Surname,
		TIMESTAMPDIFF(YEAR, W.Birthday, CURDATE()),
		W.Gender,
		W.Birthday,
		W.MobileNum,
		W.Address,
		W.EntryDate,
		W.TerminationDate,
		Po.Name,
		W.Salary,
		Pe.Name,
		W.MinorChildren
	FROM Worker AS W
	INNER JOIN Position AS Po ON W.PositionId = Po.Id
	INNER JOIN Pension AS Pe ON W.PensionId = Pe.Id
    WHERE W.IDnum = idNum;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Login`(username VARCHAR(30), password VARCHAR(255))
BEGIN
	SELECT W.IDnum, W.Names, W.Surname, P.Position
    FROM Worker AS W
    JOIN Position AS P
    ON W.PositionId = P.Id
    WHERE W.Username = username AND W.Password = password;
END ;;
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

-- Dump completed on 2021-11-17 18:05:52
