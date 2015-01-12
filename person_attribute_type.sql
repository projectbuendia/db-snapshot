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
-- Table structure for table `person_attribute_type`
--

DROP TABLE IF EXISTS `person_attribute_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_attribute_type` (
  `person_attribute_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `format` varchar(50) DEFAULT NULL,
  `foreign_key` int(11) DEFAULT NULL,
  `searchable` tinyint(1) NOT NULL DEFAULT '0',
  `creator` int(11) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL,
  `retired` tinyint(1) NOT NULL DEFAULT '0',
  `retired_by` int(11) DEFAULT NULL,
  `date_retired` datetime DEFAULT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `edit_privilege` varchar(255) DEFAULT NULL,
  `sort_weight` double DEFAULT NULL,
  `uuid` char(38) DEFAULT NULL,
  PRIMARY KEY (`person_attribute_type_id`),
  UNIQUE KEY `person_attribute_type_uuid_index` (`uuid`),
  KEY `attribute_is_searchable` (`searchable`),
  KEY `name_of_attribute` (`name`),
  KEY `person_attribute_type_retired_status` (`retired`),
  KEY `attribute_type_changer` (`changed_by`),
  KEY `attribute_type_creator` (`creator`),
  KEY `user_who_retired_person_attribute_type` (`retired_by`),
  KEY `privilege_which_can_edit` (`edit_privilege`),
  CONSTRAINT `attribute_type_changer` FOREIGN KEY (`changed_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `attribute_type_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`user_id`),
  CONSTRAINT `privilege_which_can_edit` FOREIGN KEY (`edit_privilege`) REFERENCES `privilege` (`privilege`),
  CONSTRAINT `user_who_retired_person_attribute_type` FOREIGN KEY (`retired_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
