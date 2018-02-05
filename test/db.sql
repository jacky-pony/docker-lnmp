-- MySQL dump 10.13  Distrib 5.6.38, for Linux (x86_64)
--
-- Host: localhost    Database: pedep
-- ------------------------------------------------------
-- Server version	5.6.38

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
-- Table structure for table `pedep_down_log`
--

DROP TABLE IF EXISTS `pedep_down_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedep_down_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL COMMENT 'project_id 椤圭洰ID',
  `ip` varchar(100) DEFAULT NULL COMMENT 'IP鍦板潃',
  `down_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pedep_member`
--

DROP TABLE IF EXISTS `pedep_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedep_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL COMMENT '鑷姩鐢熸垚-md5(uid)鍙栧悗6浣?,
  `nickname` varchar(30) DEFAULT NULL COMMENT '鐢ㄦ埛鏄电О',
  `password` char(32) DEFAULT NULL COMMENT '鐢ㄦ埛瀵嗙爜',
  `create_time` int(11) DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT '' COMMENT '澶村儚鍥剧墖鍦板潃',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pedep_passport`
--

DROP TABLE IF EXISTS `pedep_passport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedep_passport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `openid` varchar(100) DEFAULT NULL COMMENT '绗笁鏂规巿鏉僆D',
  `type` tinyint(2) DEFAULT '1' COMMENT '绗笁绫诲瀷 1 GITHUB 2 鏂版氮寰崥',
  `create_time` int(11) DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT NULL COMMENT '澶村儚鍥剧墖鍦板潃',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pedep_project`
--

DROP TABLE IF EXISTS `pedep_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedep_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '鏍囬',
  `content` longtext COMMENT '鍐呭-README.md',
  `view_total` int(11) unsigned DEFAULT NULL COMMENT '娴忚閲?,
  `status` tinyint(2) DEFAULT '1' COMMENT '椤圭洰鐘舵€?1 姝ｅ父 -1 绂佺敤',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL COMMENT '鍒嗕韩鍦板潃',
  `depict` varchar(205) DEFAULT NULL COMMENT '椤圭洰鎻忚堪绠€瑕?,
  `url_type` tinyint(2) DEFAULT '1' COMMENT '鍒嗕韩鍦板潃绫诲瀷 1 github  2 鐮佷簯',
  `branch` varchar(100) DEFAULT NULL COMMENT '鍒嗘敮鍚嶇О',
  `repo` varchar(100) DEFAULT NULL COMMENT '浠撳簱鍚嶇О',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pedep_upvote`
--

DROP TABLE IF EXISTS `pedep_upvote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedep_upvote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL COMMENT 'project_id 椤圭洰ID',
  `upvote_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-04 10:24:49
