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
-- Table structure for table `concept_reference_map`
--

DROP TABLE IF EXISTS `concept_reference_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `concept_reference_map` (
  `concept_map_id` int(11) NOT NULL AUTO_INCREMENT,
  `creator` int(11) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `concept_id` int(11) NOT NULL DEFAULT '0',
  `uuid` char(38) NOT NULL,
  `concept_reference_term_id` int(11) NOT NULL,
  `concept_map_type_id` int(11) NOT NULL DEFAULT '1',
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL,
  PRIMARY KEY (`concept_map_id`),
  UNIQUE KEY `concept_map_uuid_index` (`uuid`),
  KEY `map_creator` (`creator`),
  KEY `map_for_concept` (`concept_id`),
  KEY `mapped_concept_map_type` (`concept_map_type_id`),
  KEY `mapped_user_changed_ref_term` (`changed_by`),
  KEY `mapped_concept_reference_term` (`concept_reference_term_id`),
  CONSTRAINT `mapped_concept_map_type` FOREIGN KEY (`concept_map_type_id`) REFERENCES `concept_map_type` (`concept_map_type_id`),
  CONSTRAINT `mapped_concept_reference_term` FOREIGN KEY (`concept_reference_term_id`) REFERENCES `concept_reference_term` (`concept_reference_term_id`),
  CONSTRAINT `mapped_user_changed_ref_term` FOREIGN KEY (`changed_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `map_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`user_id`),
  CONSTRAINT `map_for_concept` FOREIGN KEY (`concept_id`) REFERENCES `concept` (`concept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=278449 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
