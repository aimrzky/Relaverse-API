-- MySQL dump 10.13  Distrib 5.7.42, for Linux (x86_64)
--
-- Host: localhost    Database: mysql
-- ------------------------------------------------------
-- Server version	5.7.40-google-log

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
-- Current Database: `relaverse`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `relaverse` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `relaverse`;

--
-- Table structure for table `campaign_participants`
--

DROP TABLE IF EXISTS `campaign_participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_participants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `campaign_id` (`campaign_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `campaign_participants_ibfk_1` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`),
  CONSTRAINT `campaign_participants_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_participants`
--

LOCK TABLES `campaign_participants` WRITE;
/*!40000 ALTER TABLE `campaign_participants` DISABLE KEYS */;
INSERT INTO `campaign_participants` VALUES (62,69,19,'2023-06-12 15:35:28'),(63,70,19,'2023-06-12 15:35:35'),(64,69,22,'2023-06-12 19:22:25');
/*!40000 ALTER TABLE `campaign_participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `photoEvent` varchar(255) DEFAULT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `whatsappLink` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `campaigns_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
INSERT INTO `campaigns` VALUES (69,'Gotong Royong Pembersihan Sungai Ciliwung','Aimar Rizki',5,'https://storage.googleapis.com/relaverse/1686579824711-ciliwung1.jpeg',-2.542123,-1.454123,'085155489322','Kegiatan gotong royong ini memiliki tujuan untuk menjaga aliran air di ibukota agar tetap terjaga bersih dan terhindar dari polusi air','2023-06-15 00:00:00','DKI Jakarta','https://chat.whatsapp.com/I6QwDZrj1133xPwmJ7wh81'),(70,'Membersihkan sungai cileungsi','faiz',19,'https://storage.googleapis.com/relaverse/1686584106803-12-Jun-20235905154511542566531.jpg',-6.386961,106.959839,'088809667233','test','2023-06-20 00:00:00','JX75+3QF, Limus Nunggal, Cileungsi, Bogor Regency, West Java 16820, Indonesia','https://chat.whatsapp.com/L7cUM4XXb26Hij721OpHey');
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Aimar Rizki','08122431231','aimarrizki@gmail.com','$2a$10$exiyi1JEBZAtMaYIo71ju.x2xidh8T0mf/44M1jlWaVfzSoeHK1dS',NULL,NULL),(2,'Fakhrity Hikmawan','08123456789','fakhrityh@gmail.com','$2a$10$fpNJd5BK15GhkcVU60b/xeIqqAN9Zs/SSja1L8sL9b5CX7QJDcu2q',-6.973526,107.632598),(3,'Budi','0812134324','budi@gmail.com','$2a$10$ih5o064HhtaVWhAKNQhCEuvx392TtBIr.VZEprOQv31YRNXYVks1i',-6.141278,106.711854),(4,'Fakhrity','0812321234','fakhrityhi@gmail.com','$2a$10$.mnxFEWppgRHuSVorFYBBet.BULW.w7HnHacPfJDuLCLkbnGePEK6',NULL,NULL),(5,'Aimar Rizki','085155489322','aimrzki@bangkit.com','$2a$10$VDG.WrxKdGqbEcQ3x5LfTOEkCKpD2hjeET4uuh1kfnWvMNCKBqNy2',12.780000,67.975000),(6,'Hasibuan','08988034123','hasibuan@gmail.com','$2a$10$4qSFk7KUQ47MIF4r3QmSIujNpLTvosF9XFGQeeM26jcD5W9DbK7/m',-6.973526,107.632598),(7,'Kentir God','081245673456','kentir@bangkit.com','$2a$10$NEAuLP8G8fhoSqp9ylBQFu8dMZ0IQh9Q89NtVAhmNBUiIV76TMEm2',NULL,NULL),(8,'faiz','0888123456','rianrobi2@gmail.com','$2a$10$.TwNOeFmmb/CKCnV7.zLjO9tcZsyFWGMK0nASEUQorABcWQRA1nIK',NULL,NULL),(9,'Testing','08xxxxxxxxx','tes@gmail.com','$2a$10$LZzBpJEmfT3kXuJW6qw/TeqhU6/rk0fKhSHnOLrV8HNsel.EgpWZW',-6.973526,107.632598),(10,'faiz','0888121312','faizazhary1234@gmail.com','$2a$10$Ev/DBWEZkSO/fcMIrOCxAutj7Yh5IhzBNJIwlWPUteoRngErh6nxq',NULL,NULL),(11,'faiz','0888555','testfaiz@gmail.com','$2a$10$6yt1R9/T74vwWCiIeaztWOiQzuWPzdfLwNJlrXMDb7e7rzHj8ZYfa',-6.388199,106.972302),(12,'Fakhrity Ganteng','085167564534','Fakhrityganteng@bangkit.com','$2a$10$x/HwWvv6Wepmg4clv6SeHePLuNwuf7VZ9KMyIGxZXPS6vOSecA0.q',NULL,NULL),(13,'admin','085167564535','admin@bangkit.com','$2a$10$7ZBvv8VKo6WClSwWiA0al.zRn0rRwcYYGV6PbzbOuKfuckQ8gs6la',NULL,NULL),(14,'Clara Raspiana','08126778880','clararas69@gmail.com','$2a$10$rWGYc5v9ZieyMt.sSq9oIOkaEAhlq2K7DQYw4Pu5BYMXyDfAWFgyS',-6.141346,106.712373),(15,'head','0851675626262','head@bangkit.com','$2a$10$MKyPAron5ZMBugmyXj4PmeIev7auAw7GAzkGj4fLleu.OLGlGEXFK',NULL,NULL),(16,'admin2','0851675231938','admin2@bangkit.com','$2a$10$ztnV/k/UHSLCJk9oDFpQi.8qxmtAwHo.s4qbBUKeJugs/sES5cX.S',NULL,NULL),(17,'Kristian Ekachandra','08124364646','clararas69@gmai.com','$2a$10$MgTIZDarCqOFKTJsv1cGzOX3rjXp74rRJIVFZMp22bYotc/rFA5cu',-6.141346,106.712373),(18,'Kristian Ekachandra','081264646464','kriseka45@gmail.com','$2a$10$pmKUuMQphbl8uzPZw9jCB.7hLRm8h3grjORFuxahcqQRjenvz0qdS',-6.141346,106.712373),(19,'faiz','088809667233','testfaiz1@gmail.com','$2a$10$LITTQDsrixCcPCsjPCwk8etJ68yuxEOlOQRIoMKEVGvSBds.tUQz2',-6.388196,106.972309),(20,'Fakhrity','0821826194','fakhrityhikmawan@gmail.com','$2a$10$MrXLRNFhxyIgcq4soeT0WedKBncH2Y0Lu6duU/f4Lcz9L/hluE7mW',-6.978102,107.631331),(21,'As Zaychik','089519750202','aszaychik@gmail.com','$2a$10$Jr.s1q1rx0uE.WztLbrXdejuuLpac.OLB.A2QG0mfWgldq8nGewna',-7.125207,112.389472),(22,'Kristian Ekachandra','0895332385707','kristianekachandra8@gmail.com','$2a$10$RVS4piAmIES1eEUf7OqJduFCOxIBGOr/txypYFJ5CxP/o4kci6Zne',-6.141349,106.712390);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-13 18:29:23
