-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: django_project_db
-- ------------------------------------------------------
-- Server version	5.7.28

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add about',7,'add_about'),(26,'Can change about',7,'change_about'),(27,'Can delete about',7,'delete_about'),(28,'Can view about',7,'view_about'),(29,'Can add company contact',8,'add_companycontact'),(30,'Can change company contact',8,'change_companycontact'),(31,'Can delete company contact',8,'delete_companycontact'),(32,'Can view company contact',8,'view_companycontact'),(33,'Can add contact',9,'add_contact'),(34,'Can change contact',9,'change_contact'),(35,'Can delete contact',9,'delete_contact'),(36,'Can view contact',9,'view_contact'),(37,'Can add recipe',10,'add_recipe'),(38,'Can change recipe',10,'change_recipe'),(39,'Can delete recipe',10,'delete_recipe'),(40,'Can view recipe',10,'view_recipe'),(41,'Can add category',11,'add_category'),(42,'Can change category',11,'change_category'),(43,'Can delete category',11,'delete_category'),(44,'Can view category',11,'view_category'),(45,'Can add story',12,'add_story'),(46,'Can change story',12,'change_story'),(47,'Can delete story',12,'delete_story'),(48,'Can view story',12,'view_story'),(49,'Can add comment reply',13,'add_commentreply'),(50,'Can change comment reply',13,'change_commentreply'),(51,'Can delete comment reply',13,'delete_commentreply'),(52,'Can view comment reply',13,'view_commentreply');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$zMsWfwuRYQE2$i1n/hSH8pknLim86flSFk0Wvb1OxElU3Gp7tSPQH2ek=','2020-01-20 11:04:39.333495',1,'admin','','','admin@gmail.com',1,1,'2020-01-15 07:48:59.336532'),(2,'pbkdf2_sha256$150000$gE1C8IoxNWGU$HBFBzUEbHoqvUtUvQ35YsJxAutZuY4kqns8WwXgnWew=','2020-01-17 12:39:38.181472',0,'username','naila','mammadaliyeva','mammadaliyevan@gmail.com',0,1,'2020-01-16 13:45:22.077158'),(3,'pbkdf2_sha256$150000$cXDKJz7Rj0Gp$Cf5G8dnnVTCEOGZRvK1vvtvtABYNBj2yVB3HiEpa4Vw=','2020-01-19 09:39:12.593567',0,'anyway','naile','mammadaliyeva','mammadaliyevan@gmail.com',0,1,'2020-01-18 14:27:24.745704');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-01-15 08:57:43.124930','1','category/1.jpg foods ',1,'[{\"added\": {}}]',11,1),(2,'2020-01-15 08:58:15.623941','1','recipes/1.jpg Delicious Foods dcfnfaksdcaswddsaxd ',1,'[{\"added\": {}}]',10,1),(3,'2020-01-15 09:06:05.633598','1','recipes/2.jpg Delicious Foods dcfnfaksdcaswddsaxd ',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',10,1),(4,'2020-01-15 09:59:11.323065','2','recipes/1.png sdhasklnd scfewcflsecdscdsdcsdc ',1,'[{\"added\": {}}]',10,1),(5,'2020-01-15 12:23:12.137250','2','category/1.jpg lifestyle ',1,'[{\"added\": {}}]',11,1),(6,'2020-01-15 12:23:37.213102','3','category/1_hGKIlfA.jpg others ',1,'[{\"added\": {}}]',11,1),(7,'2020-01-16 07:22:13.883900','1','stories/1.jpg Tasty & Delicious Foods vdrvgdVAg ',1,'[{\"added\": {}}]',12,1),(8,'2020-01-16 07:23:09.463616','2','stories/1_oopP3S9.jpg tasty cfsaDEfcSD ',1,'[{\"added\": {}}]',12,1),(9,'2020-01-16 08:16:46.440219','1','about/1.jpg About Stories sadankwdnlawsde 200',1,'[{\"added\": {}}]',7,1),(10,'2020-01-16 08:27:09.443192','3','stories/1_6Z25hhn.jpg tasty dcsjwncalwd ',1,'[{\"added\": {}}]',12,1),(11,'2020-01-16 16:57:24.819444','3','category/10.jpg others ',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',11,1),(12,'2020-01-16 16:58:45.045911','2','category/11.jpg lifestyle ',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',11,1),(13,'2020-01-16 16:58:56.773831','1','category/12.webp foods ',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',11,1),(14,'2020-01-16 17:02:30.953716','2','recipes/13.jpg Tasty & Delicious Foods A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences ',2,'[{\"changed\": {\"fields\": [\"image\", \"title\", \"description\"]}}]',10,1),(15,'2020-01-16 17:05:41.134852','1','recipes/14.jpg Tasty & Delicious Foods A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences ',2,'[{\"changed\": {\"fields\": [\"category\", \"image\", \"title\", \"description\"]}}]',10,1),(16,'2020-01-16 17:06:19.272459','3','recipes/15.jpg Tasty & Delicious Foods A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences ',1,'[{\"added\": {}}]',10,1),(17,'2020-01-16 17:06:43.379065','4','recipes/16.jpg Tasty & Delicious Foods A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences ',1,'[{\"added\": {}}]',10,1),(18,'2020-01-16 17:07:05.792708','5','recipes/17.jpg Tasty & Delicious Foods A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences ',1,'[{\"added\": {}}]',10,1),(19,'2020-01-16 17:15:19.919382','3','stories/18.jpg Tasty & Delicious Foods  ',2,'[{\"changed\": {\"fields\": [\"image\", \"title\"]}}]',12,1),(20,'2020-01-16 17:15:38.667490','2','stories/19.jpeg Tasty & Delicious Foods  ',2,'[{\"changed\": {\"fields\": [\"category\", \"image\", \"title\"]}}]',12,1),(21,'2020-01-16 17:15:55.873929','1','stories/19.jpg Tasty & Delicious Foods  ',2,'[{\"changed\": {\"fields\": [\"category\", \"image\"]}}]',12,1),(22,'2020-01-16 17:21:53.486904','4','stories/20_rUf2Fqk.jpeg Tasty & Delicious Foods  ',1,'[{\"added\": {}}]',12,1),(23,'2020-01-16 17:22:21.447730','5','stories/21.jpg Tasty & Delicious Foods  ',1,'[{\"added\": {}}]',12,1),(24,'2020-01-16 17:22:43.867698','6','stories/22.jpg Tasty & Delicious Foods  ',1,'[{\"added\": {}}]',12,1),(25,'2020-01-16 17:23:04.313215','7','stories/23.jpeg Tasty & Delicious Foods  ',1,'[{\"added\": {}}]',12,1),(26,'2020-01-16 17:26:27.942658','1','about/24.jpeg About Stories Far far away, behind the word mountains, far from the countries Vokalia and Consonantia 100',2,'[{\"changed\": {\"fields\": [\"image\", \"description\", \"daily_visitors\"]}}]',7,1),(27,'2020-01-16 17:27:05.475002','1','about/18.jpg About Stories Far far away, behind the word mountains, far from the countries Vokalia and Consonantia 100',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',7,1),(28,'2020-01-17 13:50:44.137387','7','stories/23.jpeg Tasty & Delicious Foods  ',2,'[{\"changed\": {\"fields\": [\"user\"]}}]',12,1),(29,'2020-01-17 13:50:50.969061','6','stories/22.jpg Tasty & Delicious Foods  ',2,'[{\"changed\": {\"fields\": [\"user\"]}}]',12,1),(30,'2020-01-18 15:33:03.615696','2','stories/19.jpeg Tasty & Delicious Foods  ',2,'[{\"changed\": {\"fields\": [\"user\"]}}]',12,1),(31,'2020-01-19 09:38:10.274632','1','stories/19.jpg Tasty & Delicious Foods  ',2,'[{\"changed\": {\"fields\": [\"user\"]}}]',12,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'stories','about'),(11,'stories','category'),(13,'stories','commentreply'),(8,'stories','companycontact'),(9,'stories','contact'),(10,'stories','recipe'),(12,'stories','story');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-01-15 07:15:36.879097'),(2,'auth','0001_initial','2020-01-15 07:15:42.004057'),(3,'admin','0001_initial','2020-01-15 07:16:03.208729'),(4,'admin','0002_logentry_remove_auto_add','2020-01-15 07:16:08.203351'),(5,'admin','0003_logentry_add_action_flag_choices','2020-01-15 07:16:08.346775'),(6,'contenttypes','0002_remove_content_type_name','2020-01-15 07:16:12.278749'),(7,'auth','0002_alter_permission_name_max_length','2020-01-15 07:16:12.748272'),(8,'auth','0003_alter_user_email_max_length','2020-01-15 07:16:13.097320'),(9,'auth','0004_alter_user_username_opts','2020-01-15 07:16:13.268635'),(10,'auth','0005_alter_user_last_login_null','2020-01-15 07:16:15.222434'),(11,'auth','0006_require_contenttypes_0002','2020-01-15 07:16:15.428453'),(12,'auth','0007_alter_validators_add_error_messages','2020-01-15 07:16:15.693334'),(13,'auth','0008_alter_user_username_max_length','2020-01-15 07:16:16.058038'),(14,'auth','0009_alter_user_last_name_max_length','2020-01-15 07:16:16.483648'),(15,'auth','0010_alter_group_name_max_length','2020-01-15 07:16:17.167859'),(16,'auth','0011_update_proxy_permissions','2020-01-15 07:16:17.329521'),(17,'sessions','0001_initial','2020-01-15 07:16:18.813994'),(18,'stories','0001_initial','2020-01-15 08:56:01.057755');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('aw4modb1e7dfbaddxqw29j3as2w1gtlh','NjFiOTkyN2YzNmM2MTMwMjMwNDIyNmQ2OGRjY2M0ZmViMWUxOGZlZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ZWMzY2YyNTk4MGE3NDgwNGQ4Zjg5M2IyNGFmYTc5ZjU5N2QzMzY0In0=','2020-02-03 11:04:39.489788'),('f1n4w1v8bkox70ke4tj4ug6i1139zmb2','ZmNmZWQ2NjkzMWUwMDQ3OTE4OTE1ZmRhMzExYTg4NDhhZjk5OTRiNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYzgzOWI4MzczNjY3MzBiNmE4MTIxM2VmNDdiMTQ3ODVkYzU0MThjIn0=','2020-01-29 09:58:13.199890'),('fzvnteszfrz9gijvmnall6rwuooti2s7','N2Y0MmMzOTFjMDNhZmU1OTJmOTRmMjZlNGVjMzQwMGU1YzAxODAyODp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYzkyNWFjNmQ3NDk4MjI2ZWZjMDYxZDkxY2QxYzJjYjk4ODA0ZTRiIiwiX3Bhc3N3b3JkX3Jlc2V0X3Rva2VuIjoiNWQ5LTU4YjUzZmNiMGRjOGQ5OTFiY2QzIn0=','2020-02-02 09:54:03.895112');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stories_about`
--

DROP TABLE IF EXISTS `stories_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stories_about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL,
  `daily_visitors` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stories_about`
--

LOCK TABLES `stories_about` WRITE;
/*!40000 ALTER TABLE `stories_about` DISABLE KEYS */;
INSERT INTO `stories_about` VALUES (1,'about/18.jpg','About Stories','Far far away, behind the word mountains, far from the countries Vokalia and Consonantia',100,'2020-01-16 08:16:46.439278','2020-01-16 17:27:05.472915');
/*!40000 ALTER TABLE `stories_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stories_category`
--

DROP TABLE IF EXISTS `stories_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stories_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stories_category`
--

LOCK TABLES `stories_category` WRITE;
/*!40000 ALTER TABLE `stories_category` DISABLE KEYS */;
INSERT INTO `stories_category` VALUES (1,'category/12.webp','foods','2020-01-15 08:57:43.122916','2020-01-16 16:58:56.771798'),(2,'category/11.jpg','lifestyle','2020-01-15 12:23:12.136373','2020-01-16 16:58:45.044682'),(3,'category/10.jpg','others','2020-01-15 12:23:37.212154','2020-01-16 16:57:24.818080');
/*!40000 ALTER TABLE `stories_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stories_commentreply`
--

DROP TABLE IF EXISTS `stories_commentreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stories_commentreply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `comment` varchar(254) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `reply_comment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stories_commentreply_reply_comment_id_e42d82e7_fk_stories_c` (`reply_comment_id`),
  CONSTRAINT `stories_commentreply_reply_comment_id_e42d82e7_fk_stories_c` FOREIGN KEY (`reply_comment_id`) REFERENCES `stories_commentreply` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stories_commentreply`
--

LOCK TABLES `stories_commentreply` WRITE;
/*!40000 ALTER TABLE `stories_commentreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `stories_commentreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stories_companycontact`
--

DROP TABLE IF EXISTS `stories_companycontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stories_companycontact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `info` varchar(50) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stories_companycontact`
--

LOCK TABLES `stories_companycontact` WRITE;
/*!40000 ALTER TABLE `stories_companycontact` DISABLE KEYS */;
/*!40000 ALTER TABLE `stories_companycontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stories_contact`
--

DROP TABLE IF EXISTS `stories_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stories_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(254) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stories_contact`
--

LOCK TABLES `stories_contact` WRITE;
/*!40000 ALTER TABLE `stories_contact` DISABLE KEYS */;
INSERT INTO `stories_contact` VALUES (1,'Naile','naile@gmai.com','lskdnfkndfi','lsdnfklsnd woienfiowef','2020-01-16 09:55:15.700907','2020-01-16 09:55:15.701133');
/*!40000 ALTER TABLE `stories_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stories_recipe`
--

DROP TABLE IF EXISTS `stories_recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stories_recipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stories_recipe_category_id_97f574e5_fk_stories_category_id` (`category_id`),
  CONSTRAINT `stories_recipe_category_id_97f574e5_fk_stories_category_id` FOREIGN KEY (`category_id`) REFERENCES `stories_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stories_recipe`
--

LOCK TABLES `stories_recipe` WRITE;
/*!40000 ALTER TABLE `stories_recipe` DISABLE KEYS */;
INSERT INTO `stories_recipe` VALUES (1,'recipes/14.jpg','Tasty & Delicious Foods','A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.','2020-01-15 08:58:15.623054','2020-01-16 17:05:41.132680',2),(2,'recipes/13.jpg','Tasty & Delicious Foods','A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.','2020-01-15 09:59:11.320091','2020-01-16 17:02:30.952408',1),(3,'recipes/15.jpg','Tasty & Delicious Foods','A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.','2020-01-16 17:06:19.269313','2020-01-16 17:06:19.269584',3),(4,'recipes/16.jpg','Tasty & Delicious Foods','A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.','2020-01-16 17:06:43.377710','2020-01-16 17:06:43.377845',1),(5,'recipes/17.jpg','Tasty & Delicious Foods','A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.','2020-01-16 17:07:05.791076','2020-01-16 17:07:05.791162',2);
/*!40000 ALTER TABLE `stories_recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stories_story`
--

DROP TABLE IF EXISTS `stories_story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stories_story` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stories_story_category_id_8381703d_fk_stories_category_id` (`category_id`),
  KEY `stories_story_user_id_855e2a92_fk_auth_user_id` (`user_id`),
  CONSTRAINT `stories_story_category_id_8381703d_fk_stories_category_id` FOREIGN KEY (`category_id`) REFERENCES `stories_category` (`id`),
  CONSTRAINT `stories_story_user_id_855e2a92_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stories_story`
--

LOCK TABLES `stories_story` WRITE;
/*!40000 ALTER TABLE `stories_story` DISABLE KEYS */;
INSERT INTO `stories_story` VALUES (1,'stories/19.jpg','Tasty & Delicious Foods','vdrvgdVAg','2020-01-16 07:22:13.881658','2020-01-19 09:38:10.273376',3,3),(2,'stories/19.jpeg','Tasty & Delicious Foods','cfsaDEfcSD','2020-01-16 07:23:09.462773','2020-01-18 15:33:03.614083',2,3),(3,'stories/18.jpg','Tasty & Delicious Foods','dcsjwncalwd','2020-01-16 08:27:09.442313','2020-01-16 17:15:19.917921',1,1),(4,'stories/20_rUf2Fqk.jpeg','Tasty & Delicious Foods','A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.','2020-01-16 17:21:53.486074','2020-01-16 17:21:53.486112',1,1),(5,'stories/21.jpg','Tasty & Delicious Foods','A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.','2020-01-16 17:22:21.444463','2020-01-16 17:22:21.444628',2,1),(6,'stories/22.jpg','Tasty & Delicious Foods','A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.','2020-01-16 17:22:43.866757','2020-01-17 13:50:50.964635',3,2),(7,'stories/23.jpeg','Tasty & Delicious Foods','A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.','2020-01-16 17:23:04.312242','2020-01-17 13:50:44.136014',2,2);
/*!40000 ALTER TABLE `stories_story` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-21 10:09:26
