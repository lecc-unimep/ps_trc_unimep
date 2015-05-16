-- MySQL dump 10.10
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.0.22

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
-- Table structure for table `nic_inf`
--

DROP TABLE IF EXISTS `nic_inf`;
CREATE TABLE `nic_inf` (
  `reg` int(10) NOT NULL auto_increment,
  `ip` varchar(15) NOT NULL,
  `mac` char(17) NOT NULL,
  `pac_rec_nor` int(10) NOT NULL,
  `pac_rec_err` int(10) NOT NULL,
  `pac_rec_des` int(10) NOT NULL,
  `pac_tra_nor` int(10) NOT NULL,
  `pac_tra_err` int(10) NOT NULL,
  `pac_tra_des` int(10) NOT NULL,
  `bytes_rec` int(10) NOT NULL,
  `bytes_tra` int(10) NOT NULL,
  `data_lei` char(10) NOT NULL,
  `hora_lei` char(8) NOT NULL,
  PRIMARY KEY  (`reg`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nic_inf`
--


/*!40000 ALTER TABLE `nic_inf` DISABLE KEYS */;
LOCK TABLES `nic_inf` WRITE;
INSERT INTO `nic_inf` VALUES (1,'10.9.0.44','08:00:27:c0:77:',185407,0,0,1152,0,0,15739536,298537,'15/05/2015','20:43:38'),(2,'10.9.0.44','08:00:27:c0:77:',197234,0,0,1152,0,0,16675299,298537,'15/05/2015','20:48:04'),(3,'10.9.0.44','08:00:27:c0:77:',205329,0,0,1153,0,0,17301150,298579,'15/05/2015','20:51:05'),(4,'10.9.0.44','08:00:27:c0:77:',211493,0,0,1153,0,0,17798688,298579,'15/05/2015','20:54:05'),(5,'10.9.0.44','08:00:27:c0:77:',218044,0,0,1153,0,0,18319762,298579,'15/05/2015','20:57:05'),(6,'10.9.0.44','08:00:27:c0:77:',226510,0,0,1163,0,0,18976503,300018,'15/05/2015','21:00:06'),(7,'10.9.0.44','08:00:27:c0:77:',232834,0,0,1163,0,0,19497905,300018,'15/05/2015','21:03:06'),(8,'10.9.0.44','08:00:27:c0:77:',238383,0,0,1166,0,0,19950269,300192,'15/05/2015','21:06:06'),(9,'10.9.0.44','08:00:27:c0:77:',243637,0,0,1166,0,0,20393412,300192,'15/05/2015','21:09:07'),(10,'10.9.0.44','08:00:27:c0:77:',249797,0,0,1167,0,0,20899601,300234,'15/05/2015','21:12:07'),(11,'10.9.0.44','08:00:27:c0:77:',255746,0,0,1184,0,0,21395159,304602,'15/05/2015','21:15:07'),(12,'10.9.0.44','08:00:27:c0:77:',262390,0,0,1184,0,0,21922046,304602,'15/05/2015','21:18:08'),(13,'10.9.0.44','08:00:27:c0:77:',268616,0,0,1185,0,0,22438281,304644,'15/05/2015','21:21:08'),(14,'10.9.0.44','08:00:27:c0:77:',272584,0,0,1185,0,0,22770543,304644,'15/05/2015','21:24:08'),(15,'10.9.0.44','08:00:27:c0:77:93',300919,0,0,1205,0,0,25087967,309073,'15/05/2015','21:41:04'),(16,'10.9.0.44','08:00:27:c0:77:93',305240,0,0,1286,0,0,25452084,342639,'15/05/2015','21:44:05'),(17,'10.9.0.44','08:00:27:c0:77:93',321473,0,0,1304,0,0,26746596,349439,'15/05/2015','21:53:57'),(18,'10.9.0.44','08:00:27:c0:77:93',326300,0,0,1304,0,0,27115348,349439,'15/05/2015','21:56:58'),(19,'10.9.0.44','08:00:27:c0:77:93',328424,0,0,1304,0,0,27276864,349439,'15/05/2015','21:57:49'),(20,'10.9.0.44','08:00:27:c0:77:93',340381,0,0,1315,0,0,28199643,350906,'15/05/2015','22:06:41'),(21,'10.9.0.44','08:00:27:c0:77:93',341529,0,0,1315,0,0,28287322,350906,'15/05/2015','22:07:42'),(22,'10.9.0.44','08:00:27:c0:77:93',343184,0,0,1315,0,0,28416588,350906,'15/05/2015','22:09:02'),(23,'10.9.0.44','08:00:27:c0:77:93',347686,0,0,1316,0,0,28755268,350948,'15/05/2015','22:12:02'),(24,'10.9.0.44','08:00:27:c0:77:93',358806,0,0,1316,0,0,29541465,350948,'15/05/2015','22:18:10'),(25,'10.9.0.44','08:00:27:c0:77:93',363827,0,0,1317,0,0,29897117,350990,'15/05/2015','22:21:13'),(26,'10.9.0.44','08:00:27:c0:77:93',365422,0,0,1317,0,0,30009833,350990,'15/05/2015','22:22:06'),(27,'10.9.0.44','08:00:27:c0:77:93',365741,0,0,1317,0,0,30031495,350990,'15/05/2015','22:22:21');
UNLOCK TABLES;
/*!40000 ALTER TABLE `nic_inf` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

