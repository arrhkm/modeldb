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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `auth_key` varchar(32) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `emp_id` varchar(15) DEFAULT NULL,
  `role` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emp_id_UNIQUE` (`emp_id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `password_reset_token_UNIQUE` (`password_reset_token`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `fk_user_emp1_idx` (`emp_id`),
  CONSTRAINT `fk_user_emp1` FOREIGN KEY (`emp_id`) REFERENCES `emp` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','YaUMSd3Kjr30m9h800Ex0rvA0loS9qm3','$2y$13$aWew5.iYCzt8JkRnIr2upeTC5ySGkChqt5HH3MQqDCSSXg46.OQTi',NULL,'admin@lintech.co.id',10,1458111829,1458111829,NULL,1),(15,'andre','i3ikN46RxPqZwqzmdhKQi-peAgd2XaAH','$2y$13$hdj0MkfnGUyfmbLrCg2kduzacUft7Lz4XkudznZK9XsPc7QdUF15W',NULL,'andre@lintech.co.id',10,1458720997,1458720997,'S13208',2),(17,'exiardhi','rQwfJgAdHDSGny9mTzXIy50gXWMgDgXR','$2y$13$aWew5.iYCzt8JkRnIr2upeTC5ySGkChqt5HH3MQqDCSSXg46.OQTi',NULL,'exiardhi@lintech.co.id',10,1459069692,1459069692,'S11158',2),(18,'hakam','VSZnXlUbih4pNAeb-Ms6SYfQgod1HJIP','$2y$13$aWew5.iYCzt8JkRnIr2upeTC5ySGkChqt5HH3MQqDCSSXg46.OQTi',NULL,'hakam@lintech.co.id',10,1459399666,1459399666,'S09078',2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
