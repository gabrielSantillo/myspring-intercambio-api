-- MariaDB dump 10.19  Distrib 10.6.9-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: myspring-website
-- ------------------------------------------------------
-- Server version	10.6.9-MariaDB

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
-- Table structure for table `colleges`
--

DROP TABLE IF EXISTS `colleges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colleges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `province_id` int(10) unsigned NOT NULL,
  `college_name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `colleges_FK` (`province_id`),
  CONSTRAINT `colleges_FK` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colleges`
--

LOCK TABLES `colleges` WRITE;
/*!40000 ALTER TABLE `colleges` DISABLE KEYS */;
INSERT INTO `colleges` VALUES (1,1,'Bow Valley College','2023-03-21 18:45:32'),(2,1,'Concordia University of Edmonton','2023-03-21 18:46:06'),(3,1,'MacEwan University','2023-03-21 18:46:30'),(4,1,'Northern Alberta Institute of Technology','2023-03-21 18:46:48'),(5,1,'Olds College','2023-03-21 18:46:59'),(6,1,'Red Deer Polytechnic','2023-03-21 18:47:11'),(7,1,'Southern Alberta Institute of Technology','2023-03-21 18:47:25'),(8,2,'Adler University','2023-03-21 18:48:27'),(9,2,'Alexander College','2023-03-21 18:48:41'),(10,2,'Acsenda School of Management','2023-03-21 18:48:55'),(11,2,'British Columbia Institute of Technology','2023-03-21 18:49:18'),(12,2,'Camosun College','2023-03-21 18:49:30'),(13,2,'Capilano University','2023-03-21 18:49:41'),(14,2,'Coast Mountain College','2023-03-21 18:49:51'),(15,2,'Columbia College','2023-03-21 18:50:02'),(16,2,'Coquitlam College','2023-03-21 18:50:13'),(17,2,'Douglas College','2023-03-21 18:50:35'),(18,2,'Emily Carr University of Art & Design','2023-03-21 18:50:49'),(19,2,'Fairleigh Dickinson University','2023-03-21 18:51:03'),(20,2,'Fraser International College at Simon Fraser University','2023-03-21 18:52:15'),(21,2,'Justice Institute of BC','2023-03-21 18:52:56'),(22,2,'Kwantlen Polytechnic University','2023-03-21 18:53:27'),(23,2,'Langara College','2023-03-21 18:53:46'),(24,2,'LaSalle College Vancouver','2023-03-21 18:54:01'),(25,2,'New York Institute of Technology','2023-03-21 18:54:21'),(26,2,'North Island College','2023-03-21 18:54:31'),(27,2,'Northern Lights College','2023-03-21 18:54:54'),(28,2,'Okanagan College','2023-03-21 18:55:15'),(29,2,'Royal Roads University','2023-03-21 18:55:29'),(30,2,'Selkirk College','2023-03-21 18:55:40'),(31,2,'Sprott Shaw College','2023-03-21 18:55:49'),(32,2,'Thompson Rivers University','2023-03-21 18:56:00'),(33,2,'University Canada West','2023-03-21 18:56:10'),(34,2,'University of the Fraser Valley','2023-03-21 18:56:21'),(35,2,'Vancouver Community College','2023-03-21 18:56:33'),(36,2,'Vancouver Film School','2023-03-21 18:56:42'),(37,2,'Vancouver Island University','2023-03-21 18:56:55'),(38,2,'Whistler Adventure School','2023-03-21 18:57:10'),(39,2,'Yorkville University','2023-03-21 18:57:19'),(40,3,'Assiniboine Community College','2023-03-21 18:58:26'),(41,3,'International College of Manitoba','2023-03-21 18:58:42'),(42,3,'Manitoba Institute of Trades and Technology','2023-03-21 18:59:08'),(43,3,'Red River College','2023-03-21 18:59:20'),(44,3,'University of Winnipeg Professional, Applied and Continuing Education','2023-03-21 18:59:41'),(45,4,'New Brunswick Community College','2023-03-21 19:00:17'),(46,4,'Crandall University','2023-03-21 19:00:35'),(47,5,'College of the North Atlantic','2023-03-21 19:00:58'),(48,6,'Cape Breton University','2023-03-21 19:01:33'),(49,6,'Mount Saint Vincent University','2023-03-21 19:01:52'),(50,6,'Saint Mary’s University','2023-03-21 19:02:07'),(51,7,'Algoma University','2023-03-21 19:02:34'),(52,7,'Algonquin College','2023-03-21 19:02:46'),(53,7,'Brock University','2023-03-21 19:03:04'),(54,7,'Cambrian College','2023-03-21 19:03:14'),(55,7,'Canadian College of Naturopathic Medicine','2023-03-21 19:03:41'),(56,7,'Centennial College','2023-03-21 19:04:19'),(57,7,'Conestoga College','2023-03-21 19:04:27'),(58,7,'Confederation College','2023-03-21 19:04:38'),(59,7,'Durham College','2023-03-21 19:04:48'),(60,7,'Fanshawe College','2023-03-21 19:04:56'),(61,7,'Fleming College','2023-03-21 19:05:05'),(62,7,'George Brown College','2023-03-21 19:05:17'),(63,7,'Georgian College','2023-03-21 19:05:29'),(64,7,'Humber College','2023-03-21 19:05:38'),(65,7,'Lakehead University','2023-03-21 19:05:49'),(66,7,'Lambton College','2023-03-21 19:06:00'),(67,7,'Laurentian University','2023-03-21 19:06:11'),(68,7,'Mohawk College','2023-03-21 19:06:21'),(69,7,'Niagara College','2023-03-21 19:06:29'),(70,7,'Nipissing University','2023-03-21 19:06:39'),(71,7,'OCAD University','2023-03-21 19:06:52'),(72,7,'Ontario Tech University','2023-03-21 19:07:03'),(73,7,'Toronto Metropolitan University International College','2023-03-21 19:07:20'),(74,7,'Sault College','2023-03-21 19:07:29'),(75,7,'Seneca College','2023-03-21 19:07:37'),(76,7,'Sheridan College','2023-03-21 19:07:45'),(77,7,'St. Clair College','2023-03-21 19:07:54'),(78,7,'St. Lawrence College','2023-03-21 19:08:04'),(79,7,'Toronto Film School','2023-03-21 19:08:37'),(80,7,'University of Windsor','2023-03-21 19:08:51'),(81,7,'Wilfred Laurier University','2023-03-21 19:09:05'),(82,7,'Yorkville University','2023-03-21 19:09:45'),(83,7,'Wilfrid Laurier international College','2023-03-21 19:09:59'),(84,8,'Holland College','2023-03-21 19:10:29'),(85,8,'University of Prince Edward island','2023-03-21 19:10:41'),(86,9,'Herzing College','2023-03-21 19:11:29'),(87,9,'Hermes College Group','2023-03-21 19:11:47'),(88,9,'LaSalle College Montreal','2023-03-21 19:11:58'),(89,9,'Lester B. Pearson School Board Vocational Programs','2023-03-21 19:12:11'),(90,9,'Trebas Institute','2023-03-21 19:12:19'),(91,9,'Vanier College','2023-03-21 19:12:27'),(92,10,'Saskatchewan Polytechnic','2023-03-21 19:12:55'),(93,10,'University of Regina','2023-03-21 19:13:04'),(94,10,'University of Saskatchewan','2023-03-21 19:13:15'),(95,11,'Yukon University','2023-03-21 19:13:43');
/*!40000 ALTER TABLE `colleges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provinces`
--

DROP TABLE IF EXISTS `provinces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provinces` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `province_name` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provinces`
--

LOCK TABLES `provinces` WRITE;
/*!40000 ALTER TABLE `provinces` DISABLE KEYS */;
INSERT INTO `provinces` VALUES (1,'Alberta','2023-03-21 17:30:28'),(2,'British Columbia','2023-03-21 17:32:49'),(3,'Manitoba','2023-03-21 17:34:33'),(4,'New Brunswick','2023-03-21 17:35:10'),(5,'Newfoundland and Labrador','2023-03-21 17:35:51'),(6,'Nova Scotia','2023-03-21 17:36:20'),(7,'Ontario','2023-03-21 17:36:58'),(8,'Prince Edward Island','2023-03-21 17:38:22'),(9,'Quebec','2023-03-21 17:38:38'),(10,'Saskatchewan','2023-03-21 17:38:55'),(11,'Yukon','2023-03-21 17:41:41');
/*!40000 ALTER TABLE `provinces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'myspring-website'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_college` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_college`(
province_id_input int unsigned,
college_name varchar(100)
)
    MODIFIES SQL DATA
begin
	insert into colleges (province_id, college_name)
	values (province_id_input, college_name);

	select last_insert_id() as id; 
	commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_province` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_province`(province_name_input varchar(30))
    MODIFIES SQL DATA
begin
	insert into provinces(province_name)
	values (province_name_input);

	select last_insert_id() as id; 
	
	commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_colleges` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_colleges`(province_id_input int unsigned)
begin
	select c.id as college_id, c.province_id, convert(p.province_name using utf8) as province_name, convert(c.college_name using utf8) college_name, convert(c.created_at using utf8) as created_at
	from colleges c
	inner join provinces p on p.id = c.province_id
	where p.id = province_id_input;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_provinces` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_provinces`()
begin
	select id, convert(province_name using utf8) as province_name, convert(created_at using utf8) as created_at
	from provinces;
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

-- Dump completed on 2023-03-23 10:56:40
