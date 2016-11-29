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
-- Table structure for table `kehadiran`
--

DROP TABLE IF EXISTS `kehadiran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kehadiran` (
  `id` date NOT NULL,
  `emp_id` varchar(15) NOT NULL,
  `periodetahun_id` year(4) NOT NULL,
  `periodebulan_id` int(11) NOT NULL,
  `in` datetime DEFAULT NULL,
  `out` datetime DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `kode_hadir` varchar(10) DEFAULT NULL,
  `sifat_hadir` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`,`emp_id`,`periodetahun_id`,`periodebulan_id`),
  KEY `fk_kehadiran_emp1_idx` (`emp_id`),
  KEY `fk_kehadiran_periodetahun1_idx` (`periodetahun_id`),
  KEY `fk_kehadiran_periodebulan1_idx` (`periodebulan_id`),
  CONSTRAINT `fk_kehadiran_emp1` FOREIGN KEY (`emp_id`) REFERENCES `emp` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_kehadiran_periodebulan1` FOREIGN KEY (`periodebulan_id`) REFERENCES `periodebulan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_kehadiran_periodetahun1` FOREIGN KEY (`periodetahun_id`) REFERENCES `periodetahun` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kehadiran`
--

LOCK TABLES `kehadiran` WRITE;
/*!40000 ALTER TABLE `kehadiran` DISABLE KEYS */;
/*!40000 ALTER TABLE `kehadiran` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-16 17:04:27
