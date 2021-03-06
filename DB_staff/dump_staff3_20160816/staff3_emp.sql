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
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp` (
  `id` varchar(15) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
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
  KEY `fk_emp_departement1_idx` (`departement_id`),
  CONSTRAINT `fk_emp_departement1` FOREIGN KEY (`departement_id`) REFERENCES `departement` (`id`) ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES ('BRP001','Luluk Aryuni','f','2015-01-02',0,NULL,'','','','','luluk@brp.co.id',1,'',NULL),('S02004','Imam Wahyudi','m','0000-00-00',1,'0000-00-00','','','68147796','','imam@lintech.co.id',0,NULL,NULL),('S03005','Ahmad Zarkarsi','m','0000-00-00',0,'0000-00-00','','','69184410','','zarkarsi@lintech.co.id',0,NULL,NULL),('S04006','Jonny Asra','m','0000-00-00',0,'0000-00-00','','','54295401','','jonny_asra@lintech.co.id',0,NULL,NULL),('S04007','Tatuk Bargijono','m','0000-00-00',0,'0000-00-00','','','68147275','','tatuk@lintech.co.id',0,NULL,NULL),('S04008','Ahmad Fudholi','m','0000-00-00',0,'0000-00-00','','','68145755','','ahmad_fudholi@lintech.co.id',0,NULL,NULL),('S05009','Yuri Widyastuti','f','0000-00-00',0,'0000-00-00','','','68650440','','accounting_staff@lintech.co.id',0,NULL,NULL),('S05010','Adi Irmantyo','m','0000-00-00',0,'0000-00-00','','','68145483','','adi_irmantyo@lintech.co.id',0,NULL,NULL),('S05013','Kuncoro','m','0000-00-00',0,'0000-00-00','','','85085883','','',0,NULL,NULL),('S05015','Rianto Halim','','0000-00-00',0,'0000-00-00','','','0222664482','','rianto_halim@lintech.co.id',0,NULL,1),('S05019','Neni Rahayu','f','0000-00-00',0,'0000-00-00','Surabaya','','105153969','','neni@lintech.co.id',0,NULL,1),('S06021','Dicky Hari Joko Irawan','m','0000-00-00',0,'0000-00-00','','','105132520','','dicky@lintech.co.id',0,NULL,NULL),('S06023','Nia Nelviza','f','0000-00-00',0,'0000-00-00','','','0182730186','','nia_nelviza@lintech.co.id',0,NULL,NULL),('S06024','Nur Aini','f','0000-00-00',0,'0000-00-00','','','105155220','','accounting_head@lintech.co.id',0,NULL,NULL),('S06026','Ahmad','m','0000-00-00',0,'0000-00-00','','','105155843','','ahmad@lintech.co.id',0,NULL,NULL),('S06027','Hendro Susilo','m','0000-00-00',0,'0000-00-00','','','108208566','','hendro@lintech.co.id',0,NULL,NULL),('S06030','Daniel Ariefin Soendjoto','m','0000-00-00',0,'0000-00-00','','','345276239','','d.ariefin@lintech.co.id',0,NULL,NULL),('S07032','Muhammad Nadzir Zaini','m','0000-00-00',0,'0000-00-00','','','118091893','','',0,NULL,NULL),('S07034','Mochmmad Arifin','m','0000-00-00',0,'0000-00-00','','','0132858742','','arifin@lintech.co.id',0,NULL,NULL),('S07035','Pudji Arijadi','','0000-00-00',0,'0000-00-00','','','0136701819','','pudji@lintech.co.id',0,NULL,NULL),('S08041','Nizma Hasbiyasari','P','0000-00-00',0,'0000-00-00','','','','','nizma@lintech.co.id',0,'',NULL),('S08042','Dessy Nurmasari','','0000-00-00',0,'0000-00-00','','','','','dessy@lintech.co.id',0,NULL,NULL),('S08043','Nefertitie Anggen','','0000-00-00',0,'0000-00-00','','','','','evie@lintech.co.id',0,NULL,NULL),('S08044','Benny Kurniawan','','0000-00-00',0,'0000-00-00','','','','','benny@lintech.co.id',0,NULL,NULL),('S08047','Haryono','','0000-00-00',0,'0000-00-00','','','','','haryono@lintech.co.id',0,NULL,NULL),('S08048','Arlika Widya Manggar Sari','','0000-00-00',0,'0000-00-00','','','','','arlika@lintech.co.id',0,NULL,NULL),('S08049','Anita Yuliana','','0000-00-00',0,'0000-00-00','','','','','anita@lintech.co.id',0,NULL,NULL),('S08052','Khushoyin','','0000-00-00',0,'0000-00-00','','','','','soyin@lintech.co.id',0,NULL,NULL),('S08054','Ari Susanto','','0000-00-00',0,'0000-00-00','','','','','ary_susanto@lintech.co.id',0,NULL,NULL),('S08057','R. Ichwanul Hakim','','0000-00-00',0,'0000-00-00','','','','','ichwan_hakim@lintech.co.id',0,NULL,1),('S08058','Agus Budiono','','0000-00-00',0,'0000-00-00','','','','','agus_b@lintech.co.id',0,NULL,NULL),('S09063','Ahmad Zainuddin','m','0000-00-00',0,'2017-02-02','','','','','',0,NULL,NULL),('S09065','Akhmad Zamroni','','0000-00-00',0,'0000-00-00','','','','','zamroni@lintech.co.id',0,NULL,NULL),('S09070','Andri Hermawan','','0000-00-00',0,'2015-06-01','','','','','andri_hermawan@lintech.co.id',0,NULL,NULL),('S09074','Novi Kurniawan','','0000-00-00',0,'2016-03-18','','','','','novi@lintech.co.id',0,NULL,NULL),('S09078','Muhammad Arraf Hakam','f','0000-00-00',1,'0000-00-00','','','','','hakam@lintech.co.id',0,NULL,1),('S10086','Yulianto Noor Hidayat','','0000-00-00',0,'2016-08-08','','','','','yulianto@lintech.co.id',0,NULL,NULL),('S10091','Made Astawa Adi Dharma','','0000-00-00',0,'0000-00-00','','','','','made_aad@lintech.co.id',0,NULL,NULL),('S10094','Bondan Cahyadi','','0000-00-00',0,'2015-08-22','','','','','bondan@lintech.co.id',0,NULL,1),('S11103','Abdul Syakur','','0000-00-00',0,'2015-04-30','','','','','saqur@lintech.co.id',0,NULL,NULL),('S11108','Agus Rohadi Wibowo','','0000-00-00',0,'2015-03-17','','','','','agus_rw@lintech.co.id',0,NULL,NULL),('S11109','Arif Sujono Hadi Saputro','','0000-00-00',0,'0000-00-00','','','','','arif_soejono@lintech.co.id',0,NULL,NULL),('S11110','Agus Hermawan','','0000-00-00',0,'0000-00-00','','','','','agus_hermawan@lintech.co.id',0,NULL,NULL),('S11117','David Kurniawan','m','0000-00-00',0,'2016-01-18','','','','','david_kurniawan@lintech.co.id',0,NULL,NULL),('S11123','Andhita Raheng Permadhi','','0000-00-00',0,'2015-02-19','','','','','raheng.permadhi@lintech.co.id',0,NULL,NULL),('S11133','Agung Joko Purnomo','','0000-00-00',0,'2014-12-10','','','','','agung@lintech.co.id',0,NULL,NULL),('S11134','Satriyo Luhur Prasetyo','','0000-00-00',0,'2015-06-15','','','','','satriyo@lintech.co.id',0,NULL,NULL),('S11140','Ilham','','0000-00-00',0,'2015-10-01','','','','','ilham@lintech.co.id',0,NULL,NULL),('S11142','Zulfikar Rusdi Firmansyah','','0000-00-00',0,'0000-00-00','','','','','zulfikar@lintech.co.id',0,NULL,NULL),('S11148','Choirul Huda','','0000-00-00',0,'2015-04-14','','','','','choirul_huda@lintech.co.id',0,NULL,NULL),('S11149','Yuniati','','0000-00-00',0,'2016-10-07','','','','','hse@lintech.co.id',0,NULL,2),('S11152','Anthon Widodo','','0000-00-00',0,'2016-05-01','','','','','anthon@lintech.co.id',0,NULL,NULL),('S11158','Exiardhi Sri Wiyono Aji','','0000-00-00',0,'2015-06-07','','','','','exiardhi@lintech.co.id',0,NULL,2),('S11159','Naharis Salam','','0000-00-00',0,'0000-00-00','','','','','naharis@lintech.co.id',0,NULL,NULL),('S11162','Peni Choidjah','','0000-00-00',0,'2015-08-01','','','','','peni@lintech.co.id',0,NULL,NULL),('S11165','Muhammad Hoir','','0000-00-00',0,'2016-05-17','','','','','hoir@lintech.co.id',0,NULL,NULL),('S12173','Awik Priono','','0000-00-00',0,'2015-04-17','','','','','awik@lintech.co.id',0,NULL,NULL),('S12176','Sugeng Cahyo Wiyono','','0000-00-00',0,'2016-02-01','','','','','sugeng@lintech.co.id',0,NULL,2),('S12181','Asnan Wijaya','','0000-00-00',0,'0000-00-00','','','','','asnan@lintech.co.id',0,NULL,NULL),('S12183','Media Lestika Sari','f','0000-00-00',0,'2015-07-08','','','','','media@lintech.co.id',0,NULL,NULL),('S12187','Yudha Anggara','','0000-00-00',0,'2017-02-01','','','','','yudha@lintech.co.id',0,NULL,NULL),('S12189','Winda Sulistiana','','0000-00-00',0,'2015-06-04','','','','','winda@lintech.co.id',0,NULL,NULL),('S12194','Siwi Dwi Lestari','','0000-00-00',0,'2016-05-01','','','','','siwi@lintech.co.id',0,NULL,NULL),('S13198','Achmad Syaiful Faried','m','0000-00-00',0,'2015-05-15','','','','','',0,NULL,NULL),('S13200','Made Endra Purwata','','0000-00-00',0,'2016-02-08','','','','','made_endra@lintech.co.id',0,NULL,NULL),('S13206','Heru Darmawan','','0000-00-00',0,'2015-06-02','','','','','heru_darmawan@lintech.co.id',0,NULL,NULL),('S13208','Andry Widya Putra','m','2013-03-15',0,'2015-04-09','','','','','andre@lintech.co.id',0,NULL,1),('S13209','Dian Agustina Retnowati','','0000-00-00',0,'2015-06-16','','','','','dian_agustina@lintech.co.id',0,NULL,NULL),('S13210','M Saiful Hidayat','','0000-00-00',0,'2015-02-15','','','','','',0,NULL,NULL),('S13213','Handy Susanto','','0000-00-00',0,'2015-07-30','','','','','handhy@lintech.co.id',0,NULL,NULL),('S13218','Endro Budiono','m','0000-00-00',0,'0000-00-00','','','','','endro_budiono@lintech.co.id',0,NULL,NULL),('S13219','Zudva Widiaranma Putri','','0000-00-00',0,'2015-02-11','','','','','zudva@lintech.co.id',0,NULL,NULL),('S13220','Abdul Majid','','0000-00-00',0,'2015-03-03','','','','','majid@lintech.co.id',0,NULL,NULL),('S13223','Heri Kurniawan','m','0000-00-00',0,'0000-00-00','','','','','heri@lintech.co.id',0,NULL,NULL),('S13224','Noval Robiq','','0000-00-00',0,'2014-12-16','','','','','noval@lintech.co.id',0,NULL,NULL),('S14231','Sugiono Setiawan','','0000-00-00',0,'2015-03-03','','','','','sugiono_setiawan@lintech.co.id',0,NULL,NULL),('S14233','Shafarudin Shafar','','0000-00-00',0,'2016-06-05','','','','','shafarudin@lintech.co.id',0,NULL,NULL),('S14235','M Irfan Samsu Nuhan','','0000-00-00',0,'2015-06-03','','','','','irfan_nuhan@lintech.co.id',0,NULL,NULL),('S14239','Rina Buawan Fatmawati','','0000-00-00',0,'2015-06-18','','','','','rina@lintech.co.id',0,NULL,NULL),('S14243','Dede Afrianto','','0000-00-00',0,'2015-06-24','','','','','dede_afrianto@lintech.co.id',0,NULL,NULL),('S14246','Akhmad Hisyam','m','2014-04-07',0,'2015-01-07','Malang','','','','hisyam@lintech.co.id',0,NULL,NULL),('S14252','Sugiarto','','0000-00-00',0,'2016-01-28','','','','','sugiarto@lintech.co.id',0,NULL,NULL),('S14256','Wahyu Diah Aliani','','0000-00-00',0,'0000-00-00','','','','','',0,NULL,NULL),('S14260','Agus Sigit Susanto','','0000-00-00',0,'0000-00-00','','','','','agus_santoso@lintech.co.id',0,NULL,NULL),('S14264','Istianah','','0000-00-00',0,'2015-06-06','','','','','isti@lintech.co.id',0,NULL,NULL),('S14265','Indah Heriningrum','','0000-00-00',0,'2015-08-04','','','','','indah@lintech.co.id',0,NULL,NULL),('S14269','Agus Santoso','m','2014-11-21',1,'2015-05-21','Indonesia','0','0','0','agus_santoso@lintech.co.id',0,NULL,NULL),('S15274','Achmad Faizal','m','2015-03-09',1,'2015-06-09','','','','','achmad_faizal@lintech.co.id',0,NULL,NULL),('S15280','Dewi Ari Cahyanti','f','2015-10-12',1,'2016-01-12','Indonesia','','','','dewiaricahyanti@gmail.com',0,NULL,NULL),('S15282','Muhammad Reza Al Haq','m','0000-00-00',0,'0000-00-00','','','','','muhammad.reza@ymail.com',0,NULL,NULL),('S15283','Nurma Virgian Masudiana','f','0000-00-00',0,'0000-00-00','','','','','nurma@lintech.co.id',0,NULL,NULL),('S16291','Muhammad Yusuf','m','0000-00-00',0,'0000-00-00','Indonesia','','','','yusuf@lintech.co.id',0,'',NULL),('S16292','Thoriq M Azam','m','0000-00-00',0,'0000-00-00','','','','','azam@lintech.co.id',0,'',NULL);
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-16 17:04:28
