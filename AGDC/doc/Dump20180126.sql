-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 121.40.214.181    Database: agridatacenter
-- ------------------------------------------------------
-- Server version	5.5.55-0ubuntu0.14.04.1

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
-- Table structure for table `AUTOPLAN_DETAIl`
--

DROP TABLE IF EXISTS `AUTOPLAN_DETAIl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUTOPLAN_DETAIl` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PLANID` int(11) NOT NULL,
  `DEVICENAME` varchar(25) DEFAULT NULL,
  `SYSTEMID` bigint(20) NOT NULL,
  `CTRLID` int(11) NOT NULL,
  `EQPTYPE` int(11) NOT NULL,
  `EQPID` int(11) NOT NULL,
  `THRESOLDMAX` decimal(10,2) DEFAULT NULL,
  `THRESOLDMIN` decimal(10,2) DEFAULT NULL,
  `DURATION` int(11) NOT NULL,
  `QUANTITY` decimal(10,2) DEFAULT NULL COMMENT '浇水量',
  PRIMARY KEY (`ID`),
  KEY `FK_AUTOPLAN_PLANID_idx` (`PLANID`),
  CONSTRAINT `FK_AUTOPLAN_PLANID` FOREIGN KEY (`PLANID`) REFERENCES `PLAN` (`PLANID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTOPLAN_DETAIl`
--

LOCK TABLES `AUTOPLAN_DETAIl` WRITE;
/*!40000 ALTER TABLE `AUTOPLAN_DETAIl` DISABLE KEYS */;
/*!40000 ALTER TABLE `AUTOPLAN_DETAIl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BEAMSTRENGTH`
--

DROP TABLE IF EXISTS `BEAMSTRENGTH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BEAMSTRENGTH` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FARMLANDID` int(11) NOT NULL,
  `BEAMDATA` decimal(10,2) DEFAULT NULL,
  `SYSTEMID` bigint(20) DEFAULT NULL,
  `CTRLID` int(11) DEFAULT NULL,
  `DEVICEID` int(11) DEFAULT NULL,
  `DEVICETYPE` int(11) DEFAULT NULL,
  `TIME` timestamp NULL DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_BEAMSTRENGTH_GID` (`FARMLANDID`),
  CONSTRAINT `FK_BEAMSTRENGTH_GID` FOREIGN KEY (`FARMLANDID`) REFERENCES `FARMLAND` (`FARMLANDID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BEAMSTRENGTH`
--

LOCK TABLES `BEAMSTRENGTH` WRITE;
/*!40000 ALTER TABLE `BEAMSTRENGTH` DISABLE KEYS */;
/*!40000 ALTER TABLE `BEAMSTRENGTH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CITY`
--

DROP TABLE IF EXISTS `CITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CITY` (
  `ID` int(11) NOT NULL,
  `CITYNAME` varchar(255) DEFAULT NULL,
  `PROVINCEID` int(11) NOT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`PROVINCEID`),
  KEY `FK_CITY_PROVINCEID_idx` (`PROVINCEID`),
  CONSTRAINT `FK_CITY_PROVINCEID` FOREIGN KEY (`PROVINCEID`) REFERENCES `PROVINCE` (`PROVINCEID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CITY`
--

LOCK TABLES `CITY` WRITE;
/*!40000 ALTER TABLE `CITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `CITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CO2`
--

DROP TABLE IF EXISTS `CO2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CO2` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FARMLANDID` int(11) NOT NULL,
  `CO2DATA` decimal(10,2) DEFAULT NULL,
  `SYSTEMID` bigint(20) DEFAULT NULL,
  `CTRLID` int(11) DEFAULT NULL,
  `DEVICEID` int(11) DEFAULT NULL,
  `DEVICETYPE` int(11) DEFAULT NULL,
  `TIME` timestamp NULL DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_CO2_GID` (`FARMLANDID`),
  CONSTRAINT `FK_CO2_GID` FOREIGN KEY (`FARMLANDID`) REFERENCES `FARMLAND` (`FARMLANDID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CO2`
--

LOCK TABLES `CO2` WRITE;
/*!40000 ALTER TABLE `CO2` DISABLE KEYS */;
/*!40000 ALTER TABLE `CO2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CROP`
--

DROP TABLE IF EXISTS `CROP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CROP` (
  `CROP_ID` int(11) NOT NULL,
  `CROP_NAME` varchar(255) DEFAULT NULL,
  `CROP_TYPE` int(11) NOT NULL,
  `CROP_URL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CROP_ID`,`CROP_TYPE`),
  KEY `FK_CROP_CROPTYPE_idx` (`CROP_TYPE`),
  CONSTRAINT `FK_CROP_CROPTYPE` FOREIGN KEY (`CROP_TYPE`) REFERENCES `CROPTYPE` (`CROP_TYPE`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CROP`
--

LOCK TABLES `CROP` WRITE;
/*!40000 ALTER TABLE `CROP` DISABLE KEYS */;
/*!40000 ALTER TABLE `CROP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CROPSTEP`
--

DROP TABLE IF EXISTS `CROPSTEP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CROPSTEP` (
  `CROP_ID` int(11) NOT NULL,
  `CROP_TYPE` int(11) NOT NULL,
  `STEP_ID` int(11) NOT NULL,
  `PLANT_TYPE` int(11) NOT NULL,
  `CROP_NAME` varchar(255) DEFAULT NULL,
  `STEP_NAME` varchar(255) DEFAULT NULL,
  `STEP_COLOR` varchar(6) DEFAULT NULL,
  `STEP_DURATION` int(11) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CROP_ID`,`CROP_TYPE`,`PLANT_TYPE`,`STEP_ID`),
  KEY `FK_CROPSTEP_TYPE_idx` (`CROP_TYPE`),
  KEY `FK_CROPSTEP_STEPID_idx` (`STEP_ID`),
  KEY `FK_CROPSTEP_PLANTTYPE_idx` (`PLANT_TYPE`),
  CONSTRAINT `FK_CROPSTEP_ID` FOREIGN KEY (`CROP_ID`, `CROP_TYPE`) REFERENCES `CROP` (`CROP_ID`, `CROP_TYPE`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CROPSTEP`
--

LOCK TABLES `CROPSTEP` WRITE;
/*!40000 ALTER TABLE `CROPSTEP` DISABLE KEYS */;
/*!40000 ALTER TABLE `CROPSTEP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CROPTYPE`
--

DROP TABLE IF EXISTS `CROPTYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CROPTYPE` (
  `CROP_TYPE` int(11) NOT NULL,
  `CROP_TYPE_NAME` varchar(255) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CROP_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CROPTYPE`
--

LOCK TABLES `CROPTYPE` WRITE;
/*!40000 ALTER TABLE `CROPTYPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CROPTYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CYCLEPLAN_DETAIL`
--

DROP TABLE IF EXISTS `CYCLEPLAN_DETAIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CYCLEPLAN_DETAIL` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PLANID` int(11) NOT NULL,
  `DEVICENAME` varchar(25) DEFAULT NULL,
  `SYSTEMID` bigint(20) NOT NULL,
  `CTRLID` int(11) NOT NULL,
  `EQPTYPE` int(11) NOT NULL,
  `EQPID` int(11) NOT NULL,
  `STARTTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ENDTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DURATION` int(11) NOT NULL COMMENT '浇水时长',
  `QUANTITY` decimal(10,2) DEFAULT NULL COMMENT '浇水量',
  `PERIOD` int(11) DEFAULT NULL COMMENT '浇水周期',
  PRIMARY KEY (`ID`),
  KEY `FK_CYCLEPLAN_PLANID_idx` (`PLANID`),
  CONSTRAINT `FK_CYCLEPLAN_PLANID` FOREIGN KEY (`PLANID`) REFERENCES `PLAN` (`PLANID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CYCLEPLAN_DETAIL`
--

LOCK TABLES `CYCLEPLAN_DETAIL` WRITE;
/*!40000 ALTER TABLE `CYCLEPLAN_DETAIL` DISABLE KEYS */;
/*!40000 ALTER TABLE `CYCLEPLAN_DETAIL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEVICE`
--

DROP TABLE IF EXISTS `DEVICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEVICE` (
  `SYSTEMID` bigint(20) NOT NULL,
  `CTRLID` int(11) NOT NULL,
  `DEVICEID` int(11) NOT NULL,
  `DEVICETYPE` int(11) NOT NULL,
  `FARMLANDID` int(11) NOT NULL,
  `DEVICEDN` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SYSTEMID`,`CTRLID`,`DEVICEID`,`DEVICETYPE`),
  KEY `FK_DEVICE_FARMLANDID_idx` (`FARMLANDID`),
  CONSTRAINT `FK_DEVICE_FARMLANDID` FOREIGN KEY (`FARMLANDID`) REFERENCES `FARMLAND` (`FARMLANDID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEVICE`
--

LOCK TABLES `DEVICE` WRITE;
/*!40000 ALTER TABLE `DEVICE` DISABLE KEYS */;
/*!40000 ALTER TABLE `DEVICE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DISTRICT`
--

DROP TABLE IF EXISTS `DISTRICT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DISTRICT` (
  `DISTRICTID` int(11) NOT NULL,
  `DISTRICTNAME` varchar(255) DEFAULT NULL,
  `CITYID` int(11) NOT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DISTRICTID`,`CITYID`),
  KEY `FK_DISTRICT_CITYID_idx` (`CITYID`),
  CONSTRAINT `FK_DISTRICT_CITYID` FOREIGN KEY (`CITYID`) REFERENCES `CITY` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DISTRICT`
--

LOCK TABLES `DISTRICT` WRITE;
/*!40000 ALTER TABLE `DISTRICT` DISABLE KEYS */;
/*!40000 ALTER TABLE `DISTRICT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FARMLAND`
--

DROP TABLE IF EXISTS `FARMLAND`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FARMLAND` (
  `FARMLANDID` int(11) NOT NULL AUTO_INCREMENT,
  `USERID` int(11) NOT NULL,
  `FARM_NAME` varchar(255) DEFAULT NULL,
  `CROP_ID` int(11) DEFAULT NULL,
  `CROP_TYPE` int(11) DEFAULT NULL,
  `GROW_TYPE` int(11) DEFAULT NULL,
  `FARM_TYPE` int(11) DEFAULT NULL COMMENT '大棚类型、大田类型等',
  `FARM_TYPE_NAME` varchar(255) DEFAULT NULL COMMENT '类型名称',
  `FARM_X` decimal(10,2) DEFAULT NULL COMMENT '经度',
  `FARM_Y` decimal(10,2) DEFAULT NULL COMMENT '纬度',
  `FARM_ADD_PRO` int(11) DEFAULT NULL COMMENT '大棚地址省id',
  `FARM_ADD_CITY` int(11) DEFAULT NULL,
  `FARM_ADD_DIST` int(11) DEFAULT NULL,
  `FARM_ADD_OTHER` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `PLANT_TIME` timestamp NULL DEFAULT NULL COMMENT '种植时间',
  `PLANT_DURATION` int(11) DEFAULT NULL COMMENT '种植时长',
  `PLANT_YIELD` decimal(10,2) DEFAULT NULL COMMENT '实际产量',
  `PLANT_AREA` decimal(10,2) DEFAULT NULL COMMENT '种植面积',
  `SOIL_N` decimal(10,2) DEFAULT NULL,
  `SOIL_P` decimal(10,2) DEFAULT NULL,
  `SOIL_K` decimal(10,2) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `COLLECT_TIME` timestamp NULL DEFAULT NULL,
  `FARM_YIELD` decimal(10,2) DEFAULT NULL COMMENT '预估产量',
  PRIMARY KEY (`FARMLANDID`),
  KEY `FK_FARMLAND_USEID` (`USERID`),
  KEY `FK_FARMLAND_CROPINFO_idx` (`CROP_ID`,`CROP_TYPE`),
  CONSTRAINT `FK_FARMLAND_CROPINFO` FOREIGN KEY (`CROP_ID`, `CROP_TYPE`) REFERENCES `CROP` (`CROP_ID`, `CROP_TYPE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_FARMLAND_USEID` FOREIGN KEY (`USERID`) REFERENCES `USER` (`USERID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FARMLAND`
--

LOCK TABLES `FARMLAND` WRITE;
/*!40000 ALTER TABLE `FARMLAND` DISABLE KEYS */;
/*!40000 ALTER TABLE `FARMLAND` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FERTILIZATION_DETAIL`
--

DROP TABLE IF EXISTS `FERTILIZATION_DETAIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FERTILIZATION_DETAIL` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FARMLANDID` int(11) NOT NULL COMMENT '地块ID',
  `PRODUCT_ID` int(11) unsigned NOT NULL COMMENT '商品ID',
  `USED_COUNT` int(11) DEFAULT NULL COMMENT '施肥商品数',
  `TIME` timestamp NULL DEFAULT NULL COMMENT '问答时间',
  PRIMARY KEY (`ID`),
  KEY `FK_DEATIL_FARMLANDID_idx` (`FARMLANDID`),
  KEY `FK_DETAIL_PRODUCTID_idx` (`PRODUCT_ID`),
  CONSTRAINT `FK_DETAIL_PRODUCTID` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `PRODUCT` (`PRODUCT_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_DEATIL_FARMLANDID` FOREIGN KEY (`FARMLANDID`) REFERENCES `FARMLAND` (`FARMLANDID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FERTILIZATION_DETAIL`
--

LOCK TABLES `FERTILIZATION_DETAIL` WRITE;
/*!40000 ALTER TABLE `FERTILIZATION_DETAIL` DISABLE KEYS */;
/*!40000 ALTER TABLE `FERTILIZATION_DETAIL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HUMIDITY`
--

DROP TABLE IF EXISTS `HUMIDITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HUMIDITY` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FARMLANDID` int(11) NOT NULL,
  `HUMIDITYDATA` decimal(10,2) DEFAULT NULL,
  `SYSTEMID` bigint(20) DEFAULT NULL,
  `CTRLID` int(11) DEFAULT NULL,
  `DEVICEID` int(11) DEFAULT NULL,
  `DEVICETYPE` int(11) DEFAULT NULL,
  `TIME` timestamp NULL DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_HUMIDITY_GID` (`FARMLANDID`),
  CONSTRAINT `FK_HUMIDITY_GID` FOREIGN KEY (`FARMLANDID`) REFERENCES `FARMLAND` (`FARMLANDID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HUMIDITY`
--

LOCK TABLES `HUMIDITY` WRITE;
/*!40000 ALTER TABLE `HUMIDITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `HUMIDITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OPERATELOG`
--

DROP TABLE IF EXISTS `OPERATELOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OPERATELOG` (
  `ID` int(11) NOT NULL,
  `FARMLANDID` int(11) NOT NULL,
  `FARMLAND_NAME` varchar(255) DEFAULT NULL,
  `USEID` int(11) NOT NULL,
  `OPERATOR` varchar(25) DEFAULT NULL,
  `CONTENT` varchar(255) DEFAULT NULL,
  `OPERSTATE` varchar(25) DEFAULT NULL,
  `SYSTEMID` bigint(20) DEFAULT NULL,
  `CTRLID` int(11) DEFAULT NULL,
  `DEVICEID` int(11) DEFAULT NULL,
  `DEVICETYPE` int(11) DEFAULT NULL,
  `DEIVCENAME` varchar(255) DEFAULT NULL,
  `TIME` timestamp NULL DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_OPERATELOG_USERID_idx` (`USEID`),
  CONSTRAINT `FK_OPERATELOG_USERID` FOREIGN KEY (`USEID`) REFERENCES `USER` (`USERID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OPERATELOG`
--

LOCK TABLES `OPERATELOG` WRITE;
/*!40000 ALTER TABLE `OPERATELOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `OPERATELOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OPERATE_DEV_LOG`
--

DROP TABLE IF EXISTS `OPERATE_DEV_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OPERATE_DEV_LOG` (
  `ID` int(11) NOT NULL,
  `FARMLANDID` int(11) NOT NULL,
  `SYSTEMID` bigint(20) DEFAULT NULL,
  `CTRLID` int(11) DEFAULT NULL,
  `DEVICEID` int(11) DEFAULT NULL,
  `DEVICETYPE` int(11) DEFAULT NULL,
  `DEIVCENAME` varchar(255) DEFAULT NULL,
  `OPER` varchar(25) DEFAULT NULL COMMENT '用户名或者系统',
  `TIME` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_OPERATE_DEV_LOG_FARMLANDID_idx` (`FARMLANDID`),
  CONSTRAINT `FK_OPERATE_DEV_LOG_FARMLANDID` FOREIGN KEY (`FARMLANDID`) REFERENCES `FARMLAND` (`FARMLANDID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OPERATE_DEV_LOG`
--

LOCK TABLES `OPERATE_DEV_LOG` WRITE;
/*!40000 ALTER TABLE `OPERATE_DEV_LOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `OPERATE_DEV_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PICKUP_POINT`
--

DROP TABLE IF EXISTS `PICKUP_POINT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PICKUP_POINT` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERID` int(11) NOT NULL COMMENT '用户ID',
  `PROVINCE_ID` int(11) NOT NULL COMMENT '自提点省',
  `CITY_ID` int(11) NOT NULL COMMENT '自提点市',
  `DISTRICT_ID` int(11) NOT NULL COMMENT '自提点区',
  `ADDRESS` varchar(255) NOT NULL COMMENT '自提点详细地址',
  PRIMARY KEY (`ID`),
  KEY `FK_POINT_USEID_idx` (`USERID`),
  CONSTRAINT `FK_POINT_USEID` FOREIGN KEY (`USERID`) REFERENCES `USER` (`USERID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PICKUP_POINT`
--

LOCK TABLES `PICKUP_POINT` WRITE;
/*!40000 ALTER TABLE `PICKUP_POINT` DISABLE KEYS */;
/*!40000 ALTER TABLE `PICKUP_POINT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PLAN`
--

DROP TABLE IF EXISTS `PLAN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PLAN` (
  `PLANID` int(11) NOT NULL,
  `FARMLANDID` int(11) NOT NULL,
  `PLANTYPE` int(11) NOT NULL,
  `STARTTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ENDTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SUMMATION` decimal(10,2) DEFAULT NULL COMMENT '浇水总量',
  PRIMARY KEY (`PLANID`),
  KEY `FK_PLAN_FARMLANDID_idx` (`FARMLANDID`),
  CONSTRAINT `FK_PLAN_FARMLANDID` FOREIGN KEY (`FARMLANDID`) REFERENCES `FARMLAND` (`FARMLANDID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PLAN`
--

LOCK TABLES `PLAN` WRITE;
/*!40000 ALTER TABLE `PLAN` DISABLE KEYS */;
/*!40000 ALTER TABLE `PLAN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT`
--

DROP TABLE IF EXISTS `PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT` (
  `PRODUCT_ID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `CATEGORY_ID` int(11) unsigned DEFAULT NULL COMMENT '分类id,对应mmall_category表的主键',
  `COMPANY_ID` int(11) unsigned DEFAULT NULL COMMENT '厂商id',
  `PRODUCT_SN` varchar(100) DEFAULT NULL,
  `NAME` varchar(100) NOT NULL COMMENT '商品名称',
  `SUBTITLE` varchar(200) DEFAULT NULL COMMENT '商品副标题',
  `MAIN_IMAGE` varchar(500) DEFAULT NULL COMMENT '产品主图,url相对地址',
  `SUB_IMAGES` text COMMENT '图片地址,json格式,扩展用',
  `DETAIL` text COMMENT '商品详情',
  `PRICE` decimal(20,2) NOT NULL COMMENT '价格,单位-元保留两位小数',
  `WEIGHT` decimal(20,2) NOT NULL,
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`PRODUCT_ID`),
  KEY `CATEGORY_ID` (`CATEGORY_ID`),
  KEY `COMPANY_ID` (`COMPANY_ID`),
  CONSTRAINT `PRODUCT_IBFK_1` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `PRODUCT_CATEGORY` (`ID`) ON DELETE SET NULL,
  CONSTRAINT `PRODUCT_IBFK_2` FOREIGN KEY (`COMPANY_ID`) REFERENCES `PRODUCT_COMPANY` (`ID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT`
--

LOCK TABLES `PRODUCT` WRITE;
/*!40000 ALTER TABLE `PRODUCT` DISABLE KEYS */;
/*!40000 ALTER TABLE `PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT_CATEGORY`
--

DROP TABLE IF EXISTS `PRODUCT_CATEGORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT_CATEGORY` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '类别Id',
  `PARENT_ID` int(11) unsigned DEFAULT NULL COMMENT '父类别id当id=0时说明是根节点,一级类别',
  `NAME` varchar(50) DEFAULT NULL COMMENT '类别名称',
  `SORT_ORDER` int(4) DEFAULT NULL COMMENT '排序编号,同类展示顺序,数值相等则自然排序',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`),
  KEY `PARENT_ID` (`PARENT_ID`),
  CONSTRAINT `PRODUCT_CATEGORY_IBFK_1` FOREIGN KEY (`PARENT_ID`) REFERENCES `PRODUCT_CATEGORY` (`ID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=100089 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT_CATEGORY`
--

LOCK TABLES `PRODUCT_CATEGORY` WRITE;
/*!40000 ALTER TABLE `PRODUCT_CATEGORY` DISABLE KEYS */;
/*!40000 ALTER TABLE `PRODUCT_CATEGORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT_COMPANY`
--

DROP TABLE IF EXISTS `PRODUCT_COMPANY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT_COMPANY` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '厂商id',
  `NAME` varchar(90) NOT NULL DEFAULT '' COMMENT '厂商名称',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT_COMPANY`
--

LOCK TABLES `PRODUCT_COMPANY` WRITE;
/*!40000 ALTER TABLE `PRODUCT_COMPANY` DISABLE KEYS */;
/*!40000 ALTER TABLE `PRODUCT_COMPANY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROFICIENT_CROP`
--

DROP TABLE IF EXISTS `PROFICIENT_CROP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PROFICIENT_CROP` (
  `USERID` int(11) NOT NULL COMMENT '专家用户ID',
  `CROP_ID` int(11) NOT NULL COMMENT '农作物ID',
  PRIMARY KEY (`USERID`,`CROP_ID`),
  KEY `FK_PROFICENT_CROPID_idx` (`CROP_ID`),
  CONSTRAINT `FK_PROFICENT_CROPID` FOREIGN KEY (`CROP_ID`) REFERENCES `CROP` (`CROP_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_PROFICIENT_USEID` FOREIGN KEY (`USERID`) REFERENCES `USER` (`USERID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROFICIENT_CROP`
--

LOCK TABLES `PROFICIENT_CROP` WRITE;
/*!40000 ALTER TABLE `PROFICIENT_CROP` DISABLE KEYS */;
/*!40000 ALTER TABLE `PROFICIENT_CROP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROVINCE`
--

DROP TABLE IF EXISTS `PROVINCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PROVINCE` (
  `PROVINCEID` int(11) NOT NULL,
  `PROVINCENAME` varchar(255) DEFAULT NULL,
  `UNITNAME` varchar(255) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PROVINCEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROVINCE`
--

LOCK TABLES `PROVINCE` WRITE;
/*!40000 ALTER TABLE `PROVINCE` DISABLE KEYS */;
/*!40000 ALTER TABLE `PROVINCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUESTION_REPLY_RECORD`
--

DROP TABLE IF EXISTS `QUESTION_REPLY_RECORD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUESTION_REPLY_RECORD` (
  `USERID` int(11) NOT NULL COMMENT '用户ID',
  `QUESTION_COUNT` int(11) DEFAULT NULL COMMENT '提出问题数',
  `REPLY_COUNT` int(11) DEFAULT NULL COMMENT '回答问题数',
  `TIME` timestamp NULL DEFAULT NULL COMMENT '问答时间',
  PRIMARY KEY (`USERID`),
  KEY `FK_QUESTION_RE_RECORD_USEID_idx` (`USERID`),
  CONSTRAINT `FK_QUESTION_RE_RECORD_USEID` FOREIGN KEY (`USERID`) REFERENCES `USER` (`USERID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUESTION_REPLY_RECORD`
--

LOCK TABLES `QUESTION_REPLY_RECORD` WRITE;
/*!40000 ALTER TABLE `QUESTION_REPLY_RECORD` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUESTION_REPLY_RECORD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SALE_DETAIL`
--

DROP TABLE IF EXISTS `SALE_DETAIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SALE_DETAIL` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '销售id',
  `USER_ID` int(11) NOT NULL COMMENT '购买用户id',
  `PROVINCE_ID` int(11) NOT NULL COMMENT '订单发货地省',
  `CITY_ID` int(11) NOT NULL COMMENT '订单发货地市',
  `DISTRICT_ID` int(11) NOT NULL COMMENT '订单发货地区',
  `PRODUCT_ID` int(11) unsigned NOT NULL COMMENT '商品ID',
  `SALE_TIME` datetime DEFAULT NULL COMMENT '销售时间',
  `SALE_COUNT` decimal(20,2) DEFAULT NULL COMMENT '销售数量',
  `ADDRESS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `USER_ID` (`USER_ID`),
  KEY `PROVINCE_ID` (`PROVINCE_ID`),
  KEY `CITY_ID` (`CITY_ID`),
  KEY `DISTRICT_ID` (`DISTRICT_ID`),
  KEY `PRODUCT_ID` (`PRODUCT_ID`),
  CONSTRAINT `SALE_CITY_ID` FOREIGN KEY (`CITY_ID`) REFERENCES `CITY` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `SALE_DISTRICT_ID` FOREIGN KEY (`DISTRICT_ID`) REFERENCES `DISTRICT` (`DISTRICTID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `SALE_PRODUCT_ID` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `PRODUCT` (`PRODUCT_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `SALE_PROVINCE_ID` FOREIGN KEY (`PROVINCE_ID`) REFERENCES `PROVINCE` (`PROVINCEID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `SALE_USER_ID` FOREIGN KEY (`USER_ID`) REFERENCES `USER` (`USERID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SALE_DETAIL`
--

LOCK TABLES `SALE_DETAIL` WRITE;
/*!40000 ALTER TABLE `SALE_DETAIL` DISABLE KEYS */;
/*!40000 ALTER TABLE `SALE_DETAIL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TEMPERATURE`
--

DROP TABLE IF EXISTS `TEMPERATURE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TEMPERATURE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FARMLANDID` int(11) NOT NULL,
  `TEMPDATA` decimal(10,2) DEFAULT NULL,
  `SYSTEMID` bigint(20) DEFAULT NULL,
  `CTRLID` int(11) DEFAULT NULL,
  `DEVICEID` int(11) DEFAULT NULL,
  `DEVICETYPE` int(11) DEFAULT NULL,
  `TIME` timestamp NULL DEFAULT NULL,
  `REMARK` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_TEMPERATURE_GID` (`FARMLANDID`),
  CONSTRAINT `FK_TEMPERATURE_GID` FOREIGN KEY (`FARMLANDID`) REFERENCES `FARMLAND` (`FARMLANDID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TEMPERATURE`
--

LOCK TABLES `TEMPERATURE` WRITE;
/*!40000 ALTER TABLE `TEMPERATURE` DISABLE KEYS */;
/*!40000 ALTER TABLE `TEMPERATURE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER` (
  `USERID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(50) DEFAULT NULL,
  `REALUSERNAME` varchar(255) DEFAULT NULL,
  `SEX` varchar(50) DEFAULT NULL,
  `EDUCATION` varchar(50) DEFAULT NULL,
  `BIRTHDAY` date DEFAULT NULL,
  `USERURL` varchar(255) DEFAULT NULL,
  `TEL` varchar(50) DEFAULT NULL,
  `ADDRESS` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `CREATTIME` timestamp NULL DEFAULT NULL,
  `USER_TYPE` int(1) NOT NULL COMMENT '0:大棚用户1:小农人用户2:两者',
  `PRIVINCE_NAME` varchar(45) DEFAULT NULL COMMENT '用户地址',
  `CITY_NAME` varchar(45) DEFAULT NULL COMMENT '用户地址',
  `DISTRICT_NAME` varchar(45) DEFAULT NULL,
  `ADD_X` decimal(10,2) DEFAULT NULL,
  `ADD_Y` decimal(10,2) DEFAULT NULL,
  `PLANT_YIELD` decimal(10,2) DEFAULT NULL COMMENT '种植产量',
  `PLANT_AREA` decimal(10,2) DEFAULT NULL COMMENT '种植面积',
  `PLANT_CROP` varchar(45) DEFAULT NULL COMMENT '种植作物',
  `PLANT_TIME` timestamp NULL DEFAULT NULL COMMENT '种植时间',
  PRIMARY KEY (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-26 14:42:59
