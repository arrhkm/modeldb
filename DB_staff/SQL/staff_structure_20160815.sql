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
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance` (
  `date_job` date NOT NULL,
  `emp_id` varchar(15) NOT NULL,
  `h_in` time DEFAULT NULL,
  `h_out` time DEFAULT NULL,
  `dt_in` datetime DEFAULT NULL,
  `dt_out` datetime DEFAULT NULL,
  PRIMARY KEY (`date_job`,`emp_id`),
  KEY `fk_attendance_emp1_idx` (`emp_id`),
  CONSTRAINT `fk_attendance_emp1` FOREIGN KEY (`emp_id`) REFERENCES `emp` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cabang`
--

DROP TABLE IF EXISTS `cabang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cabang` (
  `id` int(3) NOT NULL,
  `nama_cabang` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(15) NOT NULL,
  `date_create` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_card_emp1_idx` (`emp_id`),
  CONSTRAINT `fk_card_emp1` FOREIGN KEY (`emp_id`) REFERENCES `emp` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `departement`
--

DROP TABLE IF EXISTS `departement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detilfaktor`
--

DROP TABLE IF EXISTS `detilfaktor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detilfaktor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` int(10) DEFAULT NULL,
  `dscription` varchar(225) DEFAULT NULL,
  `faktor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_detilfaktor_faktor1_idx` (`faktor_id`),
  CONSTRAINT `fk_detilfaktor_faktor1` FOREIGN KEY (`faktor_id`) REFERENCES `faktor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp` (
  `id` varchar(15) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `start_job` date DEFAULT NULL,
  `warm_contract` tinyint(1) DEFAULT NULL,
  `warm_date` date DEFAULT NULL,
  `citizen_id` varchar(19) DEFAULT NULL,
  `jamsostek_id` varchar(45) DEFAULT NULL,
  `bank_account` varchar(45) DEFAULT NULL,
  `npwp` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `non_aktif` tinyint(1) NOT NULL,
  `photoprofile` blob,
  `departement_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_emp_departement1_idx` (`departement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `engineatt`
--

DROP TABLE IF EXISTS `engineatt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `engineatt` (
  `pin` int(11) NOT NULL,
  `dateatt` datetime NOT NULL,
  `verified` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`pin`,`dateatt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `faktor`
--

DROP TABLE IF EXISTS `faktor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faktor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faktor_name` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `formcuti`
--

DROP TABLE IF EXISTS `formcuti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formcuti` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(15) NOT NULL,
  `mastercuti_id` varchar(10) NOT NULL,
  `tglmulai` date DEFAULT NULL,
  `tglselesai` date DEFAULT NULL,
  `dscription` varchar(45) DEFAULT NULL,
  `approval` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_formcuti_emp1_idx` (`emp_id`),
  KEY `fk_formcuti_mastercuti1_idx` (`mastercuti_id`),
  CONSTRAINT `fk_formcuti_emp1` FOREIGN KEY (`emp_id`) REFERENCES `emp` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_formcuti_mastercuti1` FOREIGN KEY (`mastercuti_id`) REFERENCES `mastercuti` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gaji`
--

DROP TABLE IF EXISTS `gaji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gaji` (
  `emp_id` varchar(15) NOT NULL,
  `tgl` date NOT NULL,
  `gp` decimal(10,2) DEFAULT NULL,
  `tmasakerja` decimal(10,2) DEFAULT NULL,
  `tjabatan` decimal(10,2) DEFAULT NULL,
  `tfungsional` decimal(10,2) DEFAULT NULL,
  `tallowance` decimal(10,2) DEFAULT NULL,
  `tpremihadir` decimal(10,2) DEFAULT NULL,
  `laukpauk` decimal(10,2) DEFAULT NULL,
  `tdapen` decimal(10,2) DEFAULT NULL,
  `tinsentif` decimal(10,2) DEFAULT NULL,
  `gajiplus` decimal(10,2) DEFAULT NULL,
  `gajiminus` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`tgl`,`emp_id`),
  KEY `fk_gaji_emp1_idx` (`emp_id`),
  CONSTRAINT `fk_gaji_emp1` FOREIGN KEY (`emp_id`) REFERENCES `emp` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gradeemp`
--

DROP TABLE IF EXISTS `gradeemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gradeemp` (
  `faktor_id` int(11) NOT NULL,
  `emp_id` varchar(15) NOT NULL,
  `detilfaktor_id` int(11) NOT NULL,
  `value` int(10) DEFAULT NULL,
  PRIMARY KEY (`faktor_id`,`emp_id`),
  KEY `fk_gradeemp_emp1_idx` (`emp_id`),
  KEY `fk_gradeemp_faktor1_idx` (`faktor_id`),
  KEY `fk_gradeemp_detilfaktor1_idx` (`detilfaktor_id`),
  CONSTRAINT `fk_gradeemp_detilfaktor1` FOREIGN KEY (`detilfaktor_id`) REFERENCES `detilfaktor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_gradeemp_emp1` FOREIGN KEY (`emp_id`) REFERENCES `emp` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_gradeemp_faktor1` FOREIGN KEY (`faktor_id`) REFERENCES `faktor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hkmformpermit`
--

DROP TABLE IF EXISTS `hkmformpermit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hkmformpermit` (
  `id` int(11) NOT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `dscription` varchar(255) DEFAULT NULL,
  `approval` int(1) DEFAULT NULL,
  `emp_id` varchar(15) NOT NULL,
  `hkmmasterpermit_id` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_formhkmpermit_emp1_idx` (`emp_id`),
  KEY `fk_hkmformpermit_hkmmasterpermit1_idx` (`hkmmasterpermit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hkmmasterpermit`
--

DROP TABLE IF EXISTS `hkmmasterpermit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hkmmasterpermit` (
  `id` varchar(10) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `channel` int(10) DEFAULT NULL,
  `dscription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hkmpermit`
--

DROP TABLE IF EXISTS `hkmpermit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hkmpermit` (
  `id` date NOT NULL,
  `emp_id` varchar(15) NOT NULL,
  `dscription` varchar(45) DEFAULT NULL,
  `hkmmasterpermit_id` varchar(10) NOT NULL,
  PRIMARY KEY (`id`,`emp_id`),
  KEY `fk_ijin_emp1_idx` (`emp_id`),
  KEY `fk_hkmpermit_hkmmasterpermit1_idx` (`hkmmasterpermit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `manage`
--

DROP TABLE IF EXISTS `manage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manage` (
  `emp_id` varchar(15) NOT NULL,
  `departement_id` int(11) NOT NULL,
  PRIMARY KEY (`emp_id`,`departement_id`),
  UNIQUE KEY `emp_id_UNIQUE` (`emp_id`),
  UNIQUE KEY `departement_id_UNIQUE` (`departement_id`),
  KEY `fk_manage_departement1_idx` (`departement_id`),
  KEY `fk_manage_emp1_idx` (`emp_id`),
  CONSTRAINT `fk_manage_departement1` FOREIGN KEY (`departement_id`) REFERENCES `departement` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_manage_emp1` FOREIGN KEY (`emp_id`) REFERENCES `emp` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mastercuti`
--

DROP TABLE IF EXISTS `mastercuti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mastercuti` (
  `id` varchar(10) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `dscription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `officetime`
--

DROP TABLE IF EXISTS `officetime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `officetime` (
  `id` int(11) NOT NULL,
  `name_time` varchar(32) DEFAULT NULL,
  `must_in` time DEFAULT NULL,
  `must_out` time DEFAULT NULL,
  `limit_in_start` time DEFAULT NULL,
  `limit_in_last` time DEFAULT NULL,
  `limit_out_start` time DEFAULT NULL,
  `limit_out_last` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `officetimeemp`
--

DROP TABLE IF EXISTS `officetimeemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `officetimeemp` (
  `officetime_id` int(11) NOT NULL,
  `emp_id` varchar(15) NOT NULL,
  PRIMARY KEY (`officetime_id`,`emp_id`),
  UNIQUE KEY `officetime_id_UNIQUE` (`officetime_id`),
  UNIQUE KEY `emp_id_UNIQUE` (`emp_id`),
  KEY `fk_officetime_has_emp_emp1_idx` (`emp_id`),
  KEY `fk_officetime_has_emp_officetime1_idx` (`officetime_id`),
  CONSTRAINT `fk_officetime_has_emp_emp1` FOREIGN KEY (`emp_id`) REFERENCES `emp` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_officetime_has_emp_officetime1` FOREIGN KEY (`officetime_id`) REFERENCES `officetime` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `periodebulan`
--

DROP TABLE IF EXISTS `periodebulan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodebulan` (
  `id` int(11) NOT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `periodetahun_id` year(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_periodebulan_periodetahun1_idx` (`periodetahun_id`),
  CONSTRAINT `fk_periodebulan_periodetahun1` FOREIGN KEY (`periodetahun_id`) REFERENCES `periodetahun` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `periodetahun`
--

DROP TABLE IF EXISTS `periodetahun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodetahun` (
  `id` year(4) NOT NULL,
  `dscription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `salarystruct`
--

DROP TABLE IF EXISTS `salarystruct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salarystruct` (
  `id` int(11) NOT NULL,
  `level_min` int(11) DEFAULT NULL,
  `level_max` int(11) DEFAULT NULL,
  `sal_group` varchar(225) DEFAULT NULL,
  `sal_grade` varchar(4) DEFAULT NULL,
  `sal_class` int(11) DEFAULT NULL,
  `sal_minimum` decimal(10,2) DEFAULT NULL,
  `q_low` decimal(10,2) DEFAULT NULL,
  `sal_median` decimal(10,2) DEFAULT NULL,
  `q_high` decimal(10,2) DEFAULT NULL,
  `sal_maximum` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-15 18:45:13
