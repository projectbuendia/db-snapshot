-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: openmrs_clean
-- ------------------------------------------------------
-- Server version	5.5.40-0+wheezy1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note` (
  `note_id` int(11) NOT NULL DEFAULT '0',
  `note_type` varchar(50) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `obs_id` int(11) DEFAULT NULL,
  `encounter_id` int(11) DEFAULT NULL,
  `text` text NOT NULL,
  `priority` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `creator` int(11) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL,
  `uuid` char(38) DEFAULT NULL,
  PRIMARY KEY (`note_id`),
  UNIQUE KEY `note_uuid_index` (`uuid`),
  KEY `user_who_changed_note` (`changed_by`),
  KEY `user_who_created_note` (`creator`),
  KEY `encounter_note` (`encounter_id`),
  KEY `obs_note` (`obs_id`),
  KEY `note_hierarchy` (`parent`),
  KEY `patient_note` (`patient_id`),
  CONSTRAINT `encounter_note` FOREIGN KEY (`encounter_id`) REFERENCES `encounter` (`encounter_id`),
  CONSTRAINT `note_hierarchy` FOREIGN KEY (`parent`) REFERENCES `note` (`note_id`),
  CONSTRAINT `obs_note` FOREIGN KEY (`obs_id`) REFERENCES `obs` (`obs_id`),
  CONSTRAINT `patient_note` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`) ON UPDATE CASCADE,
  CONSTRAINT `user_who_changed_note` FOREIGN KEY (`changed_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `user_who_created_note` FOREIGN KEY (`creator`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
