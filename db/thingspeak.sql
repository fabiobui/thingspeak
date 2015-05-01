-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: thingspeak
-- ------------------------------------------------------
-- Server version	5.5.43-0+deb7u1

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
-- Table structure for table `active_admin_comments`
--

DROP TABLE IF EXISTS `active_admin_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_admin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) DEFAULT NULL,
  `body` text,
  `resource_id` varchar(50) NOT NULL,
  `resource_type` varchar(50) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`) USING BTREE,
  KEY `index_active_admin_comments_on_namespace` (`namespace`) USING BTREE,
  KEY `index_active_admin_comments_on_resource_type_and_resource_id` (`resource_type`,`resource_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_admin_comments`
--

LOCK TABLES `active_admin_comments` WRITE;
/*!40000 ALTER TABLE `active_admin_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_admin_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_users_on_email` (`email`) USING BTREE,
  UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_keys`
--

DROP TABLE IF EXISTS `api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `api_key` varchar(16) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `write_flag` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_api_keys_on_api_key` (`api_key`) USING BTREE,
  KEY `index_api_keys_on_channel_id` (`channel_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_keys`
--

LOCK TABLES `api_keys` WRITE;
/*!40000 ALTER TABLE `api_keys` DISABLE KEYS */;
INSERT INTO `api_keys` VALUES (1,'XBEY9BHD39QX75NZ',1,1,1,'2015-04-25 15:01:49','2015-04-25 15:01:49',NULL),(3,'0VV4TDPMCMFX84VV',3,1,1,'2015-04-25 15:09:23','2015-04-25 15:09:23',NULL);
/*!40000 ALTER TABLE `api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channels`
--

DROP TABLE IF EXISTS `channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `latitude` decimal(15,10) DEFAULT NULL,
  `longitude` decimal(15,10) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `scale1` int(11) DEFAULT NULL,
  `scale2` int(11) DEFAULT NULL,
  `scale3` int(11) DEFAULT NULL,
  `scale4` int(11) DEFAULT NULL,
  `scale5` int(11) DEFAULT NULL,
  `scale6` int(11) DEFAULT NULL,
  `scale7` int(11) DEFAULT NULL,
  `scale8` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `elevation` varchar(255) DEFAULT NULL,
  `last_entry_id` int(11) DEFAULT NULL,
  `public_flag` tinyint(1) DEFAULT '0',
  `options1` varchar(255) DEFAULT NULL,
  `options2` varchar(255) DEFAULT NULL,
  `options3` varchar(255) DEFAULT NULL,
  `options4` varchar(255) DEFAULT NULL,
  `options5` varchar(255) DEFAULT NULL,
  `options6` varchar(255) DEFAULT NULL,
  `options7` varchar(255) DEFAULT NULL,
  `options8` varchar(255) DEFAULT NULL,
  `social` tinyint(1) DEFAULT '0',
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `video_id` varchar(255) DEFAULT NULL,
  `video_type` varchar(255) DEFAULT NULL,
  `clearing` tinyint(1) NOT NULL DEFAULT '0',
  `ranking` int(11) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `realtime_io_serial_number` varchar(36) DEFAULT NULL,
  `metadata` text,
  `last_write_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_channels_on_latitude_and_longitude` (`latitude`,`longitude`) USING BTREE,
  KEY `channels_public_viewable` (`public_flag`,`last_entry_id`,`updated_at`) USING BTREE,
  KEY `index_channels_on_ranking_and_updated_at` (`ranking`,`updated_at`) USING BTREE,
  KEY `index_channels_on_realtime_io_serial_number` (`realtime_io_serial_number`) USING BTREE,
  KEY `index_channels_on_slug` (`slug`) USING BTREE,
  KEY `index_channels_on_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channels`
--

LOCK TABLES `channels` WRITE;
/*!40000 ALTER TABLE `channels` DISABLE KEYS */;
INSERT INTO `channels` VALUES (1,1,'Canale 1',NULL,NULL,NULL,'Etichetta Campo 1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-25 15:01:49','2015-04-25 15:01:49',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,15,NULL,NULL,NULL,NULL),(3,1,'Canale 3',NULL,NULL,NULL,'Etichetta Campo 1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-25 15:09:23','2015-04-25 15:09:23',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,15,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commands`
--

DROP TABLE IF EXISTS `commands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `command_string` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `talkback_id` int(11) DEFAULT NULL,
  `executed_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_commands_on_talkback_id_and_executed_at` (`talkback_id`,`executed_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commands`
--

LOCK TABLES `commands` WRITE;
/*!40000 ALTER TABLE `commands` DISABLE KEYS */;
/*!40000 ALTER TABLE `commands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `body` text,
  `flags` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_channel_id` (`channel_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_feeds`
--

DROP TABLE IF EXISTS `daily_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_feeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `calculation` varchar(20) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `field` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_daily_feeds_on_channel_id_and_date` (`channel_id`,`date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_feeds`
--

LOCK TABLES `daily_feeds` WRITE;
/*!40000 ALTER TABLE `daily_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `mac_address` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `local_ip_address` varchar(255) DEFAULT NULL,
  `local_port` int(11) DEFAULT NULL,
  `default_gateway` varchar(255) DEFAULT NULL,
  `subnet_mask` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_devices_on_mac_address` (`mac_address`) USING BTREE,
  KEY `index_devices_on_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failedlogins`
--

DROP TABLE IF EXISTS `failedlogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failedlogins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failedlogins`
--

LOCK TABLES `failedlogins` WRITE;
/*!40000 ALTER TABLE `failedlogins` DISABLE KEYS */;
INSERT INTO `failedlogins` VALUES (1,'fabio.bui@libero.it','Quark123',NULL,'2015-04-30 18:45:32','2015-04-30 18:45:32');
/*!40000 ALTER TABLE `failedlogins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feeds`
--

DROP TABLE IF EXISTS `feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `latitude` decimal(15,10) DEFAULT NULL,
  `longitude` decimal(15,10) DEFAULT NULL,
  `elevation` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_feeds_on_channel_id_and_created_at` (`channel_id`,`created_at`) USING BTREE,
  KEY `index_feeds_on_channel_id_and_entry_id` (`channel_id`,`entry_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feeds`
--

LOCK TABLES `feeds` WRITE;
/*!40000 ALTER TABLE `feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `headers`
--

DROP TABLE IF EXISTS `headers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `headers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `thinghttp_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_headers_on_thinghttp_id` (`thinghttp_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `headers`
--

LOCK TABLES `headers` WRITE;
/*!40000 ALTER TABLE `headers` DISABLE KEYS */;
/*!40000 ALTER TABLE `headers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pipes`
--

DROP TABLE IF EXISTS `pipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pipes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `parse` varchar(255) DEFAULT NULL,
  `cache` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_pipes_on_slug` (`slug`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pipes`
--

LOCK TABLES `pipes` WRITE;
/*!40000 ALTER TABLE `pipes` DISABLE KEYS */;
/*!40000 ALTER TABLE `pipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugins`
--

DROP TABLE IF EXISTS `plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `html` text,
  `css` text,
  `js` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `public_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_plugins_on_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugins`
--

LOCK TABLES `plugins` WRITE;
/*!40000 ALTER TABLE `plugins` DISABLE KEYS */;
/*!40000 ALTER TABLE `plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reacts`
--

DROP TABLE IF EXISTS `reacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `react_type` varchar(10) DEFAULT NULL,
  `run_interval` int(11) DEFAULT NULL,
  `run_on_insertion` tinyint(1) NOT NULL DEFAULT '1',
  `last_run_at` datetime DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `field_number` int(11) DEFAULT NULL,
  `condition` varchar(15) DEFAULT NULL,
  `condition_value` varchar(255) DEFAULT NULL,
  `condition_lat` float DEFAULT NULL,
  `condition_long` float DEFAULT NULL,
  `condition_elev` float DEFAULT NULL,
  `actionable_id` int(11) DEFAULT NULL,
  `last_result` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `actionable_type` varchar(255) DEFAULT 'Thinghttp',
  `action_value` varchar(255) DEFAULT NULL,
  `latest_value` varchar(255) DEFAULT NULL,
  `activated` tinyint(1) DEFAULT '1',
  `run_action_every_time` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_reacts_on_channel_id_and_run_on_insertion` (`channel_id`,`run_on_insertion`) USING BTREE,
  KEY `index_reacts_on_channel_id` (`channel_id`) USING BTREE,
  KEY `index_reacts_on_run_interval` (`run_interval`) USING BTREE,
  KEY `index_reacts_on_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reacts`
--

LOCK TABLES `reacts` WRITE;
/*!40000 ALTER TABLE `reacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `reacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduled_thinghttps`
--

DROP TABLE IF EXISTS `scheduled_thinghttps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheduled_thinghttps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '1',
  `run_interval` int(11) DEFAULT NULL,
  `thinghttp_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `last_run_at` datetime DEFAULT NULL,
  `last_result` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_scheduled_thinghttps_on_activated_and_run_interval` (`activated`,`run_interval`) USING BTREE,
  KEY `index_scheduled_thinghttps_on_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduled_thinghttps`
--

LOCK TABLES `scheduled_thinghttps` WRITE;
/*!40000 ALTER TABLE `scheduled_thinghttps` DISABLE KEYS */;
/*!40000 ALTER TABLE `scheduled_thinghttps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20101111054358'),('20101116224140'),('20101116225014'),('20101117005031'),('20101117211040'),('20101117211209'),('20101118061100'),('20101119231040'),('20101123073857'),('20101207175152'),('20101210151518'),('20101217193433'),('20101218173400'),('20101218174125'),('20110119170853'),('20110126140659'),('20110126144150'),('20110217135144'),('20110225042321'),('20110227025236'),('20110227025649'),('20110227211312'),('20110227221002'),('20110329204643'),('20110405211741'),('20110406220648'),('20110407034539'),('20110409071450'),('20110409221058'),('20110419173839'),('20110425145717'),('20110427021512'),('20110427021659'),('20110428182848'),('20110428225855'),('20110513192617'),('20110528172838'),('20111209111008'),('20111220200743'),('20111220205057'),('20111222205615'),('20120209003458'),('20120213011639'),('20120215111613'),('20120215111708'),('20120220015055'),('20120220031559'),('20120220035936'),('20120227002240'),('20120317011252'),('20120319001841'),('20120321013341'),('20120323173306'),('20120331221037'),('20120521003815'),('20120709152043'),('20120716160028'),('20120821145951'),('20120907024520'),('20130618221922'),('20130621124211'),('20131203192610'),('20131203194235'),('20131203194541'),('20131203195328'),('20131218181245'),('20131218191938'),('20140121232049'),('20140122222754'),('20140122223014'),('20140130213435'),('20140203191645'),('20140303175235'),('20140304030719'),('20140306013304'),('20140320200306'),('20140320200307'),('20140410174033'),('20140515161337'),('20140516162515'),('20140630153108'),('20140716210000'),('20140717011204'),('20140720224408'),('20140720224812'),('20140722162824'),('20140722231849'),('20140801190147'),('20140801191621'),('20140804223739'),('20141016020624'),('20141016143645'),('20150311201046');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taggings_on_channel_id` (`channel_id`) USING BTREE,
  KEY `index_taggings_on_tag_id` (`tag_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tags_on_name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `talkbacks`
--

DROP TABLE IF EXISTS `talkbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `talkbacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `api_key` varchar(16) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_talkbacks_on_api_key` (`api_key`) USING BTREE,
  KEY `index_talkbacks_on_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talkbacks`
--

LOCK TABLES `talkbacks` WRITE;
/*!40000 ALTER TABLE `talkbacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `talkbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thinghttps`
--

DROP TABLE IF EXISTS `thinghttps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thinghttps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `api_key` varchar(16) DEFAULT NULL,
  `url` text,
  `auth_name` varchar(255) DEFAULT NULL,
  `auth_pass` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `http_version` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `body` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parse` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_thinghttps_on_api_key` (`api_key`) USING BTREE,
  KEY `index_thinghttps_on_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thinghttps`
--

LOCK TABLES `thinghttps` WRITE;
/*!40000 ALTER TABLE `thinghttps` DISABLE KEYS */;
/*!40000 ALTER TABLE `thinghttps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tweetcontrols`
--

DROP TABLE IF EXISTS `tweetcontrols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tweetcontrols` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `screen_name` varchar(255) DEFAULT NULL,
  `trigger` varchar(255) DEFAULT NULL,
  `control_type` varchar(255) DEFAULT NULL,
  `control_key` int(11) DEFAULT NULL,
  `control_string` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tweetcontrols_on_screen_name` (`screen_name`) USING BTREE,
  KEY `index_tweetcontrols_on_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tweetcontrols`
--

LOCK TABLES `tweetcontrols` WRITE;
/*!40000 ALTER TABLE `tweetcontrols` DISABLE KEYS */;
/*!40000 ALTER TABLE `tweetcontrols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twitter_accounts`
--

DROP TABLE IF EXISTS `twitter_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `screen_name` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `twitter_id` bigint(20) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `secret` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `api_key` varchar(17) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_twitters_on_api_key` (`api_key`) USING BTREE,
  KEY `index_twitters_on_twitter_id` (`twitter_id`) USING BTREE,
  KEY `index_twitters_on_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twitter_accounts`
--

LOCK TABLES `twitter_accounts` WRITE;
/*!40000 ALTER TABLE `twitter_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `encrypted_password` varchar(255) NOT NULL,
  `password_salt` varchar(255) DEFAULT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `time_zone` varchar(255) DEFAULT NULL,
  `public_flag` tinyint(1) DEFAULT '0',
  `bio` text,
  `website` varchar(255) DEFAULT NULL,
  `api_key` varchar(16) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `authentication_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`) USING BTREE,
  UNIQUE KEY `index_users_on_login` (`login`) USING BTREE,
  UNIQUE KEY `index_users_on_authentication_token` (`authentication_token`) USING BTREE,
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`) USING BTREE,
  KEY `index_users_on_api_key` (`api_key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'fabiobui','fabio.bui@libero.it','$2a$10$NA1wFH1bQVPUxbLPQw7KqefgseKQXXjGAA.9YqjZuvTZXr5rUJ55.',NULL,'2015-05-01 10:49:35','2015-05-01 10:33:47','192.168.142.1','192.168.142.1','2015-04-25 15:01:35','2015-05-01 10:49:35','Rome',0,NULL,NULL,'LVSI4EDU14HUP9C7',NULL,NULL,'2015-04-30 18:45:40',24,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watchings`
--

DROP TABLE IF EXISTS `watchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watchings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_watchings_on_user_id_and_channel_id` (`user_id`,`channel_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watchings`
--

LOCK TABLES `watchings` WRITE;
/*!40000 ALTER TABLE `watchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `watchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `windows`
--

DROP TABLE IF EXISTS `windows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `windows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `html` text,
  `col` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `window_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `private_flag` tinyint(1) DEFAULT '0',
  `show_flag` tinyint(1) DEFAULT '1',
  `content_id` int(11) DEFAULT NULL,
  `options` text,
  PRIMARY KEY (`id`),
  KEY `index_windows_on_channel_id` (`channel_id`) USING BTREE,
  KEY `index_windows_on_window_type_and_content_id` (`window_type`,`content_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `windows`
--

LOCK TABLES `windows` WRITE;
/*!40000 ALTER TABLE `windows` DISABLE KEYS */;
INSERT INTO `windows` VALUES (1,1,1,'2015-04-25 15:01:49','2015-04-25 15:01:49','<iframe class=\"statusIFrame\" width=\"450\" height=\"260\" frameborder=\"0\"  src=\"/channels/1/status/recent\"></iframe>',1,'window_status','status',NULL,1,1,NULL,NULL),(2,1,1,'2015-04-25 15:01:49','2015-04-25 15:01:49','<iframe class=\"statusIFrame\" width=\"450\" height=\"260\" frameborder=\"0\"  src=\"/channels/1/status/recent\"></iframe>',1,'window_status','status',NULL,0,1,NULL,NULL),(3,1,0,'2015-04-25 15:01:49','2015-04-25 15:01:49','<iframe id=\"iframe3\" width=\"450\" height=\"260\" style=\"border: 1px solid #cccccc;\" src=\"/channels/1/charts/1?width=450&height=260::OPTIONS::\" ></iframe>',0,'window_field_chart','chart','field1',1,1,1,'&results=60&dynamic=true'),(4,1,0,'2015-04-25 15:01:49','2015-04-25 15:01:49','<iframe id=\"iframe4\" width=\"450\" height=\"260\" style=\"border: 1px solid #cccccc;\" src=\"/channels/1/charts/1?width=450&height=260::OPTIONS::\" ></iframe>',0,'window_field_chart','chart','field1',0,1,1,'&results=60&dynamic=true'),(9,3,1,'2015-04-25 15:09:23','2015-04-25 15:09:23','<iframe class=\"statusIFrame\" width=\"450\" height=\"260\" frameborder=\"0\"  src=\"/channels/3/status/recent\"></iframe>',1,'window_status','status',NULL,1,1,NULL,NULL),(10,3,1,'2015-04-25 15:09:23','2015-04-25 15:09:23','<iframe class=\"statusIFrame\" width=\"450\" height=\"260\" frameborder=\"0\"  src=\"/channels/3/status/recent\"></iframe>',1,'window_status','status',NULL,0,1,NULL,NULL),(11,3,0,'2015-04-25 15:09:23','2015-04-25 15:09:23','<iframe id=\"iframe11\" width=\"450\" height=\"260\" style=\"border: 1px solid #cccccc;\" src=\"/channels/3/charts/1?width=450&height=260::OPTIONS::\" ></iframe>',0,'window_field_chart','chart','field1',1,1,1,'&results=60&dynamic=true'),(12,3,0,'2015-04-25 15:09:23','2015-04-25 15:09:23','<iframe id=\"iframe12\" width=\"450\" height=\"260\" style=\"border: 1px solid #cccccc;\" src=\"/channels/3/charts/1?width=450&height=260::OPTIONS::\" ></iframe>',0,'window_field_chart','chart','field1',0,1,1,'&results=60&dynamic=true');
/*!40000 ALTER TABLE `windows` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-01 19:47:46
