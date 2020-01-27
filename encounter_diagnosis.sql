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
-- Table structure for table `encounter_diagnosis`
--

DROP TABLE IF EXISTS `encounter_diagnosis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encounter_diagnosis` (
  `diagnosis_id` int(11) NOT NULL AUTO_INCREMENT,
  `diagnosis_coded` int(11) DEFAULT NULL,
  `diagnosis_non_coded` varchar(255) DEFAULT NULL,
  `diagnosis_coded_name` int(11) DEFAULT NULL,
  `encounter_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `condition_id` int(11) DEFAULT NULL,
  `certainty` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `uuid` char(38) NOT NULL,
  `creator` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL,
  `voided` tinyint(1) NOT NULL DEFAULT '0',
  `voided_by` int(11) DEFAULT NULL,
  `date_voided` datetime DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`diagnosis_id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `encounter_diagnosis_encounter_id_fk` (`encounter_id`),
  KEY `encounter_diagnosis_condition_id_fk` (`condition_id`),
  KEY `encounter_diagnosis_creator_fk` (`creator`),
  KEY `encounter_diagnosis_voided_by_fk` (`voided_by`),
  KEY `encounter_diagnosis_changed_by_fk` (`changed_by`),
  KEY `encounter_diagnosis_coded_fk` (`diagnosis_coded`),
  KEY `encounter_diagnosis_coded_name_fk` (`diagnosis_coded_name`),
  KEY `encounter_diagnosis_patient_fk` (`patient_id`),
  CONSTRAINT `encounter_diagnosis_changed_by_fk` FOREIGN KEY (`changed_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `encounter_diagnosis_coded_fk` FOREIGN KEY (`diagnosis_coded`) REFERENCES `concept` (`concept_id`),
  CONSTRAINT `encounter_diagnosis_coded_name_fk` FOREIGN KEY (`diagnosis_coded_name`) REFERENCES `concept_name` (`concept_name_id`),
  CONSTRAINT `encounter_diagnosis_condition_id_fk` FOREIGN KEY (`condition_id`) REFERENCES `conditions` (`condition_id`),
  CONSTRAINT `encounter_diagnosis_creator_fk` FOREIGN KEY (`creator`) REFERENCES `users` (`user_id`),
  CONSTRAINT `encounter_diagnosis_encounter_id_fk` FOREIGN KEY (`encounter_id`) REFERENCES `encounter` (`encounter_id`),
  CONSTRAINT `encounter_diagnosis_patient_fk` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  CONSTRAINT `encounter_diagnosis_patient_id_fk` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  CONSTRAINT `encounter_diagnosis_voided_by_fk` FOREIGN KEY (`voided_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
