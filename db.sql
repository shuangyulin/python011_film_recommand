-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: djangouops9
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `djangouops9`
--

/*!40000 DROP DATABASE IF EXISTS `djangouops9`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `djangouops9` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `djangouops9`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dianyingfenlei`
--

DROP TABLE IF EXISTS `dianyingfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dianyingfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='电影分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dianyingfenlei`
--

LOCK TABLES `dianyingfenlei` WRITE;
/*!40000 ALTER TABLE `dianyingfenlei` DISABLE KEYS */;
INSERT INTO `dianyingfenlei` VALUES (31,'2022-03-28 08:23:53','类型1'),(32,'2022-03-28 08:23:53','类型2'),(33,'2022-03-28 08:23:53','类型3'),(34,'2022-03-28 08:23:53','类型4'),(35,'2022-03-28 08:23:53','类型5'),(36,'2022-03-28 08:23:53','类型6');
/*!40000 ALTER TABLE `dianyingfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dianyingpingfen`
--

DROP TABLE IF EXISTS `dianyingpingfen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dianyingpingfen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingmingcheng` varchar(200) DEFAULT NULL COMMENT '电影名称',
  `dianyingleixing` varchar(200) DEFAULT NULL COMMENT '电影类型',
  `daoyan` varchar(200) DEFAULT NULL COMMENT '导演',
  `zhuyan` varchar(200) DEFAULT NULL COMMENT '主演',
  `pingfen` float DEFAULT NULL COMMENT '评分',
  `pingfenshijian` datetime DEFAULT NULL COMMENT '评分时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='电影评分';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dianyingpingfen`
--

LOCK TABLES `dianyingpingfen` WRITE;
/*!40000 ALTER TABLE `dianyingpingfen` DISABLE KEYS */;
INSERT INTO `dianyingpingfen` VALUES (41,'2022-03-28 08:23:53','电影名称1','电影类型1','导演1','主演1',1,'2022-03-28 16:23:53','账号1','姓名1'),(42,'2022-03-28 08:23:53','电影名称2','电影类型2','导演2','主演2',2,'2022-03-28 16:23:53','账号2','姓名2'),(43,'2022-03-28 08:23:53','电影名称3','电影类型3','导演3','主演3',3,'2022-03-28 16:23:53','账号3','姓名3'),(44,'2022-03-28 08:23:53','电影名称4','电影类型4','导演4','主演4',4,'2022-03-28 16:23:53','账号4','姓名4'),(45,'2022-03-28 08:23:53','电影名称5','电影类型5','导演5','主演5',5,'2022-03-28 16:23:53','账号5','姓名5'),(46,'2022-03-28 08:23:53','电影名称6','电影类型6','导演6','主演6',6,'2022-03-28 16:23:53','账号6','姓名6');
/*!40000 ALTER TABLE `dianyingpingfen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszaixiandianying`
--

DROP TABLE IF EXISTS `discusszaixiandianying`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusszaixiandianying` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='在线电影评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszaixiandianying`
--

LOCK TABLES `discusszaixiandianying` WRITE;
/*!40000 ALTER TABLE `discusszaixiandianying` DISABLE KEYS */;
INSERT INTO `discusszaixiandianying` VALUES (71,'2022-03-28 08:23:53',1,1,'用户名1','评论内容1','回复内容1'),(72,'2022-03-28 08:23:53',2,2,'用户名2','评论内容2','回复内容2'),(73,'2022-03-28 08:23:53',3,3,'用户名3','评论内容3','回复内容3'),(74,'2022-03-28 08:23:53',4,4,'用户名4','评论内容4','回复内容4'),(75,'2022-03-28 08:23:53',5,5,'用户名5','评论内容5','回复内容5'),(76,'2022-03-28 08:23:53',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusszaixiandianying` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pymovie`
--

DROP TABLE IF EXISTS `pymovie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pymovie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `url` varchar(200) DEFAULT NULL COMMENT '网址',
  `title` varchar(200) NOT NULL COMMENT '电影名',
  `category` varchar(200) DEFAULT NULL COMMENT '电影分类',
  `actor` varchar(200) DEFAULT NULL COMMENT '主演',
  `director` varchar(200) DEFAULT NULL COMMENT '导演',
  `language` varchar(200) DEFAULT NULL COMMENT '语言',
  `region` varchar(200) DEFAULT NULL COMMENT '发行地区',
  `issuedate` varchar(200) DEFAULT NULL COMMENT '发行年份',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `synopsis` longtext COMMENT '简介',
  `intro` longtext COMMENT '介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='电影信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pymovie`
--

LOCK TABLES `pymovie` WRITE;
/*!40000 ALTER TABLE `pymovie` DISABLE KEYS */;
/*!40000 ALTER TABLE `pymovie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-28 08:23:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `chengshi` varchar(200) DEFAULT NULL COMMENT '城市',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-03-28 08:23:53','账号1','123456','姓名1','男','城市1','13823888881','upload/yonghu_touxiang1.jpg'),(12,'2022-03-28 08:23:53','账号2','123456','姓名2','男','城市2','13823888882','upload/yonghu_touxiang2.jpg'),(13,'2022-03-28 08:23:53','账号3','123456','姓名3','男','城市3','13823888883','upload/yonghu_touxiang3.jpg'),(14,'2022-03-28 08:23:53','账号4','123456','姓名4','男','城市4','13823888884','upload/yonghu_touxiang4.jpg'),(15,'2022-03-28 08:23:53','账号5','123456','姓名5','男','城市5','13823888885','upload/yonghu_touxiang5.jpg'),(16,'2022-03-28 08:23:53','账号6','123456','姓名6','男','城市6','13823888886','upload/yonghu_touxiang6.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaixiandianying`
--

DROP TABLE IF EXISTS `zaixiandianying`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaixiandianying` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingmingcheng` varchar(200) NOT NULL COMMENT '电影名称',
  `dianyingleixing` varchar(200) NOT NULL COMMENT '电影类型',
  `daoyan` varchar(200) DEFAULT NULL COMMENT '导演',
  `zhuyan` varchar(200) DEFAULT NULL COMMENT '主演',
  `zhipiandiqu` varchar(200) DEFAULT NULL COMMENT '制片地区',
  `dianyingshipin` varchar(200) DEFAULT NULL COMMENT '电影视频',
  `shangyingriqi` date DEFAULT NULL COMMENT '上映日期',
  `dianyingmiaoshu` longtext COMMENT '电影描述',
  `dianyinghaibao` varchar(200) DEFAULT NULL COMMENT '电影海报',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='在线电影';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaixiandianying`
--

LOCK TABLES `zaixiandianying` WRITE;
/*!40000 ALTER TABLE `zaixiandianying` DISABLE KEYS */;
INSERT INTO `zaixiandianying` VALUES (21,'2022-03-28 08:23:53','电影名称1','电影类型1','导演1','主演1','制片地区1','','2022-03-28','电影描述1','upload/zaixiandianying_dianyinghaibao1.jpg',1,1,'2022-03-28 16:23:53'),(22,'2022-03-28 08:23:53','电影名称2','电影类型2','导演2','主演2','制片地区2','','2022-03-28','电影描述2','upload/zaixiandianying_dianyinghaibao2.jpg',2,2,'2022-03-28 16:23:53'),(23,'2022-03-28 08:23:53','电影名称3','电影类型3','导演3','主演3','制片地区3','','2022-03-28','电影描述3','upload/zaixiandianying_dianyinghaibao3.jpg',3,3,'2022-03-28 16:23:53'),(24,'2022-03-28 08:23:53','电影名称4','电影类型4','导演4','主演4','制片地区4','','2022-03-28','电影描述4','upload/zaixiandianying_dianyinghaibao4.jpg',4,4,'2022-03-28 16:23:53'),(25,'2022-03-28 08:23:53','电影名称5','电影类型5','导演5','主演5','制片地区5','','2022-03-28','电影描述5','upload/zaixiandianying_dianyinghaibao5.jpg',5,5,'2022-03-28 16:23:53'),(26,'2022-03-28 08:23:53','电影名称6','电影类型6','导演6','主演6','制片地区6','','2022-03-28','电影描述6','upload/zaixiandianying_dianyinghaibao6.jpg',6,6,'2022-03-28 16:23:53');
/*!40000 ALTER TABLE `zaixiandianying` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-28 16:25:07
