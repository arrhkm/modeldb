-- MySQL dump 10.13  Distrib 5.6.31, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: staff3
-- ------------------------------------------------------
-- Server version	5.6.31-0ubuntu0.15.10.1

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
-- Table structure for table `dayoff`
--

DROP TABLE IF EXISTS `dayoff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dayoff` (
  `id` date NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `describe_off` text,
  `periodebulan_id` int(11) NOT NULL,
  `cabang_id` int(3) NOT NULL,
  PRIMARY KEY (`id`,`periodebulan_id`,`cabang_id`),
  KEY `fk_dayoff_periodebulan1_idx` (`periodebulan_id`),
  KEY `fk_dayoff_cabang1_idx` (`cabang_id`),
  CONSTRAINT `fk_dayoff_cabang1` FOREIGN KEY (`cabang_id`) REFERENCES `cabang` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_dayoff_periodebulan1` FOREIGN KEY (`periodebulan_id`) REFERENCES `periodebulan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dayoff`
--

LOCK TABLES `dayoff` WRITE;
/*!40000 ALTER TABLE `dayoff` DISABLE KEYS */;
INSERT INTO `dayoff` VALUES ('2016-08-10','Hari Pahlawan','',8,1),('2016-08-10','sss','',8,2),('2016-08-16','weffff','',8,2),('2016-08-17','Hari Kemerdekaan Indonesia','',8,1),('2016-08-17','Hari Kemerdekaan Indonesia','',8,2),('2016-08-18','Hari ku sendiri',NULL,8,1),('2016-08-19','weffff','',8,1),('2016-08-19','asssoosos','',8,2),('2016-08-20','asdadas','asda',8,1),('2016-08-20','dda','',8,2);
/*!40000 ALTER TABLE `dayoff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-16 17:04:26
