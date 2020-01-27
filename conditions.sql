-- MySQL dump 10.13  Distrib 5.6.25, for osx10.8 (x86_64)
--
-- Host: localhost    Database: openmrs
-- ------------------------------------------------------
-- Server version	5.6.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `conditions`
--

DROP TABLE IF EXISTS `conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conditions` (
  `condition_id` int(11) NOT NULL AUTO_INCREMENT,
  `additional_detail` varchar(255) DEFAULT NULL,
  `previous_version` int(11) DEFAULT NULL,
  `condition_coded` int(11) DEFAULT NULL,
  `condition_non_coded` varchar(255) DEFAULT NULL,
  `condition_coded_name` int(11) DEFAULT NULL,
  `clinical_status` varchar(50) NOT NULL,
  `verification_status` varchar(50) DEFAULT NULL,
  `onset_date` datetime DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `voided` tinyint(1) NOT NULL DEFAULT '0',
  `date_voided` datetime DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(38) DEFAULT NULL,
  `creator` int(11) NOT NULL,
  `voided_by` int(11) DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `patient_id` int(11) NOT NULL,
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`condition_id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `condition_previous_version_fk` (`previous_version`),
  KEY `condition_condition_coded_fk` (`condition_coded`),
  KEY `condition_condition_coded_name_fk` (`condition_coded_name`),
  KEY `condition_creator_fk` (`creator`),
  KEY `condition_changed_by_fk` (`changed_by`),
  KEY `condition_voided_by_fk` (`voided_by`),
  KEY `condition_patient_fk` (`patient_id`),
  CONSTRAINT `condition_changed_by_fk` FOREIGN KEY (`changed_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `condition_condition_coded_fk` FOREIGN KEY (`condition_coded`) REFERENCES `concept` (`concept_id`),
  CONSTRAINT `condition_condition_coded_name_fk` FOREIGN KEY (`condition_coded_name`) REFERENCES `concept_name` (`concept_name_id`),
  CONSTRAINT `condition_creator_fk` FOREIGN KEY (`creator`) REFERENCES `users` (`user_id`),
  CONSTRAINT `condition_patient_fk` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  CONSTRAINT `condition_previous_version_fk` FOREIGN KEY (`previous_version`) REFERENCES `conditions` (`condition_id`),
  CONSTRAINT `condition_voided_by_fk` FOREIGN KEY (`voided_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
