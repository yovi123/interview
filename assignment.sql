-- MySQL dump 10.13  Distrib 5.7.34, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: assignment
-- ------------------------------------------------------
-- Server version	5.7.34-0ubuntu0.18.04.1

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2016_06_01_000001_create_oauth_auth_codes_table',2),(5,'2016_06_01_000002_create_oauth_access_tokens_table',2),(6,'2016_06_01_000003_create_oauth_refresh_tokens_table',2),(7,'2016_06_01_000004_create_oauth_clients_table',2),(8,'2016_06_01_000005_create_oauth_personal_access_clients_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('06db14a96bb912c507a239c5d68719a2c176a06cf5416c9a4c77eaa3f3087dde01ab6b2375cc9ead',NULL,1,'authToken','[]',0,'2021-05-31 00:03:25','2021-05-31 00:03:25','2022-05-31 05:33:25'),('124bfbb11b34325f2e7f8c09ae2567eae6a357dee6c32e6526c53cc2e2e56ce6ee16b4eb8fd96fe1',NULL,1,'authToken','[]',0,'2021-05-31 00:01:54','2021-05-31 00:01:54','2022-05-31 05:31:54'),('13c9dfc5b35d329cdc614524245fe405049375b10f0181bfcd894d7492304392557ba8da23060b93',NULL,1,'authToken','[]',0,'2021-05-30 23:44:26','2021-05-30 23:44:26','2022-05-31 05:14:26'),('304ff8b82b5dc74a8545af200f9cc5859447341400ea7044ef87986a54b93c0451abb6d8665748c8',1,1,'authToken','[]',0,'2021-05-31 01:27:26','2021-05-31 01:27:26','2022-05-31 06:57:26'),('31c186d471822f2b4c9b81c2ff48fcfcf7fa0f0451761b1b960169d50e6541b03f2e7c760cc0a45c',NULL,1,'authToken','[]',0,'2021-05-31 01:04:58','2021-05-31 01:04:58','2022-05-31 06:34:58'),('347d2ae8cf1f835f7bcb0f9ed24b325e07543acf2c7048806d4a74ea75e2ee99030ebc3a3eb6e0a5',NULL,1,'authToken','[]',0,'2021-05-31 01:09:22','2021-05-31 01:09:22','2022-05-31 06:39:22'),('4075f5984a328e62de92015d984a4e6f001684c165586405f369264acd3e0aa422d77e34aac6a42b',1,1,'authToken','[]',0,'2021-05-31 01:30:37','2021-05-31 01:30:37','2022-05-31 07:00:37'),('4e370f3d350108249efc18d98020b071f037faa6bb3cd9f61b715c322750f8d97b35d36c69325e8b',1,1,'authToken','[]',0,'2021-05-31 01:21:02','2021-05-31 01:21:02','2022-05-31 06:51:02'),('74d66dc5c184cc47e05d256f3b34d0a31947480cd28e13645f61adc2bd2c736190f1135914477867',NULL,1,'authToken','[]',0,'2021-05-30 23:36:13','2021-05-30 23:36:13','2022-05-31 05:06:13'),('7fd5a10687ab481125110cdc3390d6b4dfba0fef9bce67d706b462b561489d88caef8decef5b93f7',NULL,1,'authToken','[]',0,'2021-05-31 01:14:10','2021-05-31 01:14:10','2022-05-31 06:44:10'),('875e82b9f992ae9a5c446573c521ad48e2dfac12363aebdd1078c97d1e33d597e8f4ea4cfa6071f2',1,1,'authToken','[]',0,'2021-05-31 01:18:26','2021-05-31 01:18:26','2022-05-31 06:48:26'),('88b8f13ee12371afeaeedf589e3a837a7233300caaa2fdc35c36b5b25fc682707eee7854790ea314',NULL,1,'authToken','[]',0,'2021-05-30 23:42:15','2021-05-30 23:42:15','2022-05-31 05:12:15'),('93273a200e6f147641a93f3b3dc1f0d481cbc7947372d66459143eae619ef704ea081fd2b7763b97',1,1,'authToken','[]',0,'2021-05-31 01:19:47','2021-05-31 01:19:47','2022-05-31 06:49:47'),('94730557e566fe52223045de694a027aa7f5bd16291f02eee8fd1d92f7988d5ac9893bea1ffc2814',1,1,'authToken','[]',0,'2021-05-30 23:08:59','2021-05-30 23:08:59','2022-05-31 04:38:59'),('97c22dcc22117c5150d3bc2b74567fe8a8afe6a7b976fd59f6f91f817f08c1ffe5452ba0f53f34f4',1,1,'authToken','[]',0,'2021-05-30 22:21:55','2021-05-30 22:21:55','2022-05-31 03:51:55'),('a503f1c0f3c39f994890f76d41b30d2d859f34fed1516c7efa4b42bf925999b7a5db557fd5f80782',1,1,'authToken','[]',0,'2021-05-31 01:30:56','2021-05-31 01:30:56','2022-05-31 07:00:56'),('a96dd234916f77b95e234fbf81bc92da58abf71d56e7e6d45dfc6878c0c9a51c8a6acebdf90dff12',1,1,'authToken','[]',0,'2021-05-31 01:31:45','2021-05-31 01:31:45','2022-05-31 07:01:45'),('ab05cb9cecd30e418ecaadf80ddd42aa2ff0ce8a9b91cfe54be0e3961b5da0f48a082a88c9926626',NULL,1,'authToken','[]',0,'2021-05-30 23:21:10','2021-05-30 23:21:10','2022-05-31 04:51:10'),('abb88714fdff6db37af6dce8cfe21f360387c0ac72666a37a66880ded05987286b249fc125a6d331',NULL,1,'authToken','[]',0,'2021-05-30 23:17:38','2021-05-30 23:17:38','2022-05-31 04:47:38'),('af99b982c0142b22bbbd31fc2304d24ad5b33b1ae3897ad92aa046718ec8312908c3af2e5512d436',NULL,1,'authToken','[]',0,'2021-05-31 00:04:11','2021-05-31 00:04:11','2022-05-31 05:34:11'),('c977e47cdbcd7037fc98a58bae8c439dc6ffe3a67540d196912106ec4999ae32de71b53c6e427c08',NULL,1,'authToken','[]',0,'2021-05-30 23:27:46','2021-05-30 23:27:46','2022-05-31 04:57:46'),('cece7b658115b9fdadd1ad90bc7d8cd8c04fd86e1c163db6d0e09c2cde6dbba839054f18b547ce0f',1,1,'authToken','[]',0,'2021-05-31 01:28:40','2021-05-31 01:28:40','2022-05-31 06:58:40'),('cfffd09289900e35591bd2ad8ac74a0f45c74da0bfe1d39db087d1f01c30b65a720422b88feeeca6',1,1,'authToken','[]',0,'2021-05-31 01:18:57','2021-05-31 01:18:57','2022-05-31 06:48:57'),('d05f81083954f1a84b4bb798168f4ed30f947a035deb20c80dff93eb28d0577632322cdb4eeb7a6f',NULL,1,'authToken','[]',0,'2021-05-31 01:08:20','2021-05-31 01:08:20','2022-05-31 06:38:20'),('d2c2c8b91a3173b9999a7b33db963e13929bc81f8e60a0bcea99fc07af85066c0411ecfa0abd947c',NULL,1,'authToken','[]',0,'2021-05-30 23:16:41','2021-05-30 23:16:41','2022-05-31 04:46:41'),('f525aac84897448882e7b66cbf5da1478e1a11c50c8356e40c22104c992de69990dbf892e4bce743',NULL,1,'authToken','[]',0,'2021-05-31 00:02:44','2021-05-31 00:02:44','2022-05-31 05:32:44'),('f908f8f2f38b3e1d7fb9e326c562c3f71aa41bf13cc6ccdd7496dad3160cc286e6a394d0e545c171',1,1,'authToken','[]',0,'2021-05-30 23:09:32','2021-05-30 23:09:32','2022-05-31 04:39:32'),('fbf5b921460f0912fd6789998623fdec4273acf54a4d8b93f6312842ce7f384d4f8cc89247fda0aa',NULL,1,'authToken','[]',0,'2021-05-31 00:02:27','2021-05-31 00:02:27','2022-05-31 05:32:27');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','KO3zfvEPEBYg6AfCy6Sb0eQ9UwVY1v61hgZNLPn6',NULL,'http://localhost',1,0,0,'2021-05-30 22:18:08','2021-05-30 22:18:08'),(2,NULL,'Laravel Password Grant Client','SnglazgcggJNehlqleW88Dzrn2I1vW6PBkogsotp','users','http://localhost',0,1,0,'2021-05-30 22:18:08','2021-05-30 22:18:08');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2021-05-30 13:05:17','2021-05-30 13:05:17'),(2,3,'2021-05-30 21:31:08','2021-05-30 21:31:08'),(3,1,'2021-05-30 22:18:08','2021-05-30 22:18:08');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Yogesh Vishwakarma','yogeshv302@gmail.com',NULL,'$2y$10$QPIqDbEB686EK/htXc1zCOjTvrxkwovNDP3vHZD1/hvBMhoOsK7l6',NULL,'2021-05-31 01:28:40','2021-05-31 01:28:40'),(2,'Yovi','vishwakarma.yogesh33@gmail.com',NULL,'$2y$10$SajHF63al84XuPuGkiuw2O5Wx6levsKzaMYfrtpGeI1TLIBKWcutu',NULL,'2021-05-31 04:59:09','2021-05-31 04:59:09');
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

-- Dump completed on 2021-05-31 18:10:24
