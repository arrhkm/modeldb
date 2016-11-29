-- MySQL dump 10.13  Distrib 5.6.31, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: staff
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
-- Table structure for table `cuti`
--

DROP TABLE IF EXISTS `cuti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuti` (
  `id` date NOT NULL,
  `emp_id` varchar(15) NOT NULL,
  `mastercuti_id` varchar(10) NOT NULL,
  `dscription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`emp_id`),
  KEY `fk_cuti_emp1_idx` (`emp_id`),
  KEY `fk_cuti_mastercuti1_idx` (`mastercuti_id`),
  CONSTRAINT `fk_cuti_emp1` FOREIGN KEY (`emp_id`) REFERENCES `emp` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cuti_mastercuti1` FOREIGN KEY (`mastercuti_id`) REFERENCES `mastercuti` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuti`
--

LOCK TABLES `cuti` WRITE;
/*!40000 ALTER TABLE `cuti` DISABLE KEYS */;
INSERT INTO `cuti` VALUES ('2016-03-19','S09078','CTT','Keperluan Keluarga '),('2016-03-20','S09078','CTT','Cuti ajah deh '),('2016-04-02','S08049','CTH','Cuti Hamil'),('2016-04-03','S08049','CTH','Cuti Hamil'),('2016-04-04','S08049','CTH','Cuti Hamil'),('2016-04-05','S08049','CTH','Cuti Hamil'),('2016-04-06','S08049','CTH','Cuti Hamil'),('2016-04-07','S08049','CTH','Cuti Hamil'),('2016-04-08','S08049','CTH','Cuti Hamil'),('2016-04-09','S08049','CTH','Cuti Hamil'),('2016-04-10','S08049','CTH','Cuti Hamil'),('2016-04-11','S08049','CTH','Cuti Hamil'),('2016-04-12','S08049','CTH','Cuti Hamil'),('2016-04-13','S08049','CTH','Cuti Hamil'),('2016-04-14','S08049','CTH','Cuti Hamil'),('2016-04-15','S08049','CTH','Cuti Hamil'),('2016-04-16','S08049','CTH','Cuti Hamil'),('2016-04-17','S08049','CTH','Cuti Hamil'),('2016-04-18','S08049','CTH','Cuti Hamil'),('2016-04-19','S08049','CTH','Cuti Hamil'),('2016-04-20','S08049','CTH','Cuti Hamil'),('2016-04-21','S08049','CTH','Cuti Hamil'),('2016-04-22','S08049','CTH','Cuti Hamil'),('2016-04-23','S08049','CTH','Cuti Hamil'),('2016-04-24','S08049','CTH','Cuti Hamil'),('2016-04-25','S08049','CTH','Cuti Hamil'),('2016-04-26','S08049','CTH','Cuti Hamil'),('2016-04-27','S08049','CTH','Cuti Hamil'),('2016-04-28','S08049','CTH','Cuti Hamil'),('2016-04-29','S08049','CTH','Cuti Hamil'),('2016-04-30','S08049','CTH','Cuti Hamil'),('2016-05-01','S08049','CTH','Cuti Hamil'),('2016-05-02','S08049','CTH','Cuti Hamil'),('2016-05-03','S08049','CTH','Cuti Hamil'),('2016-05-04','S08049','CTH','Cuti Hamil'),('2016-05-05','S08049','CTH','Cuti Hamil'),('2016-05-06','S08049','CTH','Cuti Hamil'),('2016-05-07','S08049','CTH','Cuti Hamil'),('2016-05-08','S08049','CTH','Cuti Hamil'),('2016-05-09','S08049','CTH','Cuti Hamil'),('2016-05-10','S08049','CTH','Cuti Hamil'),('2016-05-11','S08049','CTH','Cuti Hamil');
/*!40000 ALTER TABLE `cuti` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-11 18:21:43
