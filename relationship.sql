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
-- Table structure for table `relationship`
--

DROP TABLE IF EXISTS `relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relationship` (
  `relationship_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_a` int(11) NOT NULL,
  `relationship` int(11) NOT NULL DEFAULT '0',
  `person_b` int(11) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `creator` int(11) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `date_changed` datetime DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `voided` tinyint(1) NOT NULL DEFAULT '0',
  `voided_by` int(11) DEFAULT NULL,
  `date_voided` datetime DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `uuid` char(38) DEFAULT NULL,
  PRIMARY KEY (`relationship_id`),
  UNIQUE KEY `relationship_uuid_index` (`uuid`),
  KEY `relation_creator` (`creator`),
  KEY `person_a_is_person` (`person_a`),
  KEY `person_b_is_person` (`person_b`),
  KEY `relationship_type_id` (`relationship`),
  KEY `relation_voider` (`voided_by`),
  KEY `relationship_changed_by` (`changed_by`),
  CONSTRAINT `person_a_is_person` FOREIGN KEY (`person_a`) REFERENCES `person` (`person_id`),
  CONSTRAINT `person_b_is_person` FOREIGN KEY (`person_b`) REFERENCES `person` (`person_id`),
  CONSTRAINT `relationship_changed_by` FOREIGN KEY (`changed_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `relationship_type_id` FOREIGN KEY (`relationship`) REFERENCES `relationship_type` (`relationship_type_id`),
  CONSTRAINT `relation_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`user_id`),
  CONSTRAINT `relation_voider` FOREIGN KEY (`voided_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
