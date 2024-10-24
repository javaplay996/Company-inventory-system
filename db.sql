/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zhouchengjinxiaocun
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zhouchengjinxiaocun` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zhouchengjinxiaocun`;

/*Table structure for table `cangkurenyuan` */

DROP TABLE IF EXISTS `cangkurenyuan`;

CREATE TABLE `cangkurenyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `cangkurenyuan_name` varchar(200) DEFAULT NULL COMMENT '仓库人员姓名 Search111 ',
  `cangkurenyuan_phone` varchar(200) DEFAULT NULL COMMENT '仓库人员手机号',
  `cangkurenyuan_id_number` varchar(200) DEFAULT NULL COMMENT '仓库人员身份证号',
  `cangkurenyuan_photo` varchar(200) DEFAULT NULL COMMENT '仓库人员照片',
  `xiaoshourenyuan_zhuzhi` varchar(200) DEFAULT NULL COMMENT '现住址',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `cangkurenyuan_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='仓库人员';

/*Data for the table `cangkurenyuan` */

insert  into `cangkurenyuan`(`id`,`username`,`password`,`cangkurenyuan_name`,`cangkurenyuan_phone`,`cangkurenyuan_id_number`,`cangkurenyuan_photo`,`xiaoshourenyuan_zhuzhi`,`sex_types`,`cangkurenyuan_email`,`create_time`) values (1,'a1','123456','仓库人员姓名1','17703786901','410224199010102001','upload/cangkurenyuan1.jpg','现住址1',1,'1@qq.com','2023-02-28 10:30:14'),(2,'a2','123456','仓库人员姓名2','17703786902','410224199010102002','upload/cangkurenyuan2.jpg','现住址2',2,'2@qq.com','2023-02-28 10:30:14'),(3,'a3','123456','仓库人员姓名3','17703786903','410224199010102003','upload/cangkurenyuan3.jpg','现住址3',1,'3@qq.com','2023-02-28 10:30:14');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-02-28 10:29:19'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-02-28 10:29:19'),(3,'laiyuan_types','客户来源',1,'网络联系',NULL,NULL,'2023-02-28 10:29:19'),(4,'laiyuan_types','客户来源',2,'线下推广',NULL,NULL,'2023-02-28 10:29:19'),(5,'laiyuan_types','客户来源',3,'其他',NULL,NULL,'2023-02-28 10:29:19'),(6,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-02-28 10:29:19'),(7,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-02-28 10:29:19'),(8,'cangku_types','仓库',1,'仓库1',NULL,NULL,'2023-02-28 10:29:19'),(9,'cangku_types','仓库',2,'仓库2',NULL,NULL,'2023-02-28 10:29:19'),(10,'shangpin_types','商品类型',1,'商品类型1',NULL,NULL,'2023-02-28 10:29:19'),(11,'shangpin_types','商品类型',2,'商品类型2',NULL,NULL,'2023-02-28 10:29:19'),(12,'shangpin_types','商品类型',3,'商品类型3',NULL,NULL,'2023-02-28 10:29:20'),(13,'shangpin_types','商品类型',4,'商品类型4',NULL,NULL,'2023-02-28 10:29:20'),(14,'gongyingshang_types','供应商类型',1,'供应商类型1',NULL,NULL,'2023-02-28 10:29:20'),(15,'gongyingshang_types','供应商类型',2,'供应商类型2',NULL,NULL,'2023-02-28 10:29:20'),(16,'gongyingshang_xinyongdengji_types','供应商信用等级类型',1,'一级',NULL,NULL,'2023-02-28 10:29:20'),(17,'gongyingshang_xinyongdengji_types','供应商信用等级类型',2,'二级',NULL,NULL,'2023-02-28 10:29:20'),(18,'gongyingshang_xinyongdengji_types','供应商信用等级类型',3,'三级',NULL,NULL,'2023-02-28 10:29:20'),(19,'shangpincuruku_types','类型',1,'入库',NULL,NULL,'2023-02-28 10:29:20'),(20,'shangpincuruku_types','类型',2,'出库',NULL,NULL,'2023-02-28 10:29:20'),(21,'jieqing_types','钱款结清',1,'未结清',NULL,NULL,'2023-02-28 10:29:20'),(22,'jieqing_types','钱款结清',2,'已结清',NULL,NULL,'2023-02-28 10:29:20'),(23,'shangpin_types','商品类型',5,'商品类型5',NULL,'','2023-02-28 13:14:47');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1',2,'2023-02-28 10:30:14','公告详情1','2023-02-28 10:30:14'),(2,'公告名称2',1,'2023-02-28 10:30:14','公告详情2','2023-02-28 10:30:14'),(3,'公告名称3',2,'2023-02-28 10:30:14','公告详情3','2023-02-28 10:30:14'),(4,'公告名称4',1,'2023-02-28 10:30:14','公告详情4','2023-02-28 10:30:14'),(5,'公告名称5',1,'2023-02-28 10:30:14','公告详情5','2023-02-28 10:30:14'),(6,'公告名称6',2,'2023-02-28 10:30:14','公告详情6','2023-02-28 10:30:14'),(7,'公告名称7',2,'2023-02-28 10:30:14','公告详情7','2023-02-28 10:30:14'),(8,'公告名称8',1,'2023-02-28 10:30:14','公告详情8','2023-02-28 10:30:14'),(9,'公告名称9',1,'2023-02-28 10:30:14','公告详情9','2023-02-28 10:30:14'),(10,'公告名称10',1,'2023-02-28 10:30:14','公告详情10','2023-02-28 10:30:14'),(11,'公告名称11',1,'2023-02-28 10:30:14','公告详情11','2023-02-28 10:30:14'),(12,'公告名称12',1,'2023-02-28 10:30:14','公告详情12','2023-02-28 10:30:14'),(13,'公告名称13',2,'2023-02-28 10:30:14','公告详情13','2023-02-28 10:30:14'),(14,'公告名称14',2,'2023-02-28 10:30:14','公告详情14','2023-02-28 10:30:14');

/*Table structure for table `gongyingshang` */

DROP TABLE IF EXISTS `gongyingshang`;

CREATE TABLE `gongyingshang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongyingshang_uuid_number` varchar(200) DEFAULT NULL COMMENT '供应商唯一编号',
  `gongyingshang_name` varchar(200) DEFAULT NULL COMMENT '供应商名称  Search111 ',
  `lianxiren_name` varchar(200) DEFAULT NULL COMMENT '联系人姓名 Search111 ',
  `lianxiren_phone` varchar(200) DEFAULT NULL COMMENT '联系人手机号',
  `lianxiren_address` varchar(200) DEFAULT NULL COMMENT '地址',
  `gongyingshang_types` int(11) DEFAULT NULL COMMENT '供应商类型',
  `gongyingshang_xinyongdengji_types` int(11) DEFAULT NULL COMMENT '信用等级 Search111 ',
  `gongyingshang_content` text COMMENT '供应商详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='供应商信息';

/*Data for the table `gongyingshang` */

insert  into `gongyingshang`(`id`,`gongyingshang_uuid_number`,`gongyingshang_name`,`lianxiren_name`,`lianxiren_phone`,`lianxiren_address`,`gongyingshang_types`,`gongyingshang_xinyongdengji_types`,`gongyingshang_content`,`create_time`) values (1,'1677551414488','供应商名称1','联系人姓名1','17703786901','地址1',2,1,'供应商详情1','2023-02-28 10:30:14'),(2,'1677551414398','供应商名称2','联系人姓名2','17703786902','地址2',2,1,'供应商详情2','2023-02-28 10:30:14'),(3,'1677551414397','供应商名称3','联系人姓名3','17703786903','地址3',2,2,'供应商详情3','2023-02-28 10:30:14'),(4,'1677551414490','供应商名称4','联系人姓名4','17703786904','地址4',1,2,'供应商详情4','2023-02-28 10:30:14'),(5,'1677551414489','供应商名称5','联系人姓名5','17703786905','地址5',1,1,'供应商详情5','2023-02-28 10:30:14'),(6,'1677551414416','供应商名称6','联系人姓名6','17703786906','地址6',1,3,'供应商详情6','2023-02-28 10:30:14'),(7,'1677551414420','供应商名称7','联系人姓名7','17703786907','地址7',1,3,'供应商详情7','2023-02-28 10:30:14'),(8,'1677551414401','供应商名称8','联系人姓名8','17703786908','地址8',1,2,'供应商详情8','2023-02-28 10:30:14'),(9,'1677551414445','供应商名称9','联系人姓名9','17703786909','地址9',1,3,'供应商详情9','2023-02-28 10:30:14'),(10,'1677551414457','供应商名称10','联系人姓名10','17703786910','地址10',2,2,'供应商详情10','2023-02-28 10:30:14'),(11,'1677551414433','供应商名称11','联系人姓名11','17703786911','地址11',1,1,'供应商详情11','2023-02-28 10:30:14'),(12,'1677551414448','供应商名称12','联系人姓名12','17703786912','地址12',1,1,'供应商详情12','2023-02-28 10:30:14'),(13,'1677551414405','供应商名称13','联系人姓名13','17703786913','地址13',1,3,'供应商详情13','2023-02-28 10:30:14'),(14,'1677551414455','供应商名称14','联系人姓名14','17703786914','地址14',1,1,'供应商详情14','2023-02-28 10:30:14');

/*Table structure for table `kehu` */

DROP TABLE IF EXISTS `kehu`;

CREATE TABLE `kehu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiaoshourenyuan_id` int(11) DEFAULT NULL COMMENT '销售人员',
  `kehu_uuid_number` varchar(200) DEFAULT NULL COMMENT '客户编号 Search111 ',
  `kehu_name` varchar(200) DEFAULT NULL COMMENT '客户姓名 Search111 ',
  `kehu_phone` varchar(200) DEFAULT NULL COMMENT '客户手机号 Search111 ',
  `kehu_id_number` varchar(200) DEFAULT NULL COMMENT '客户身份证号',
  `kehu_photo` varchar(200) DEFAULT NULL COMMENT '客户照片',
  `kehu_zhuzhi` varchar(200) DEFAULT NULL COMMENT '客户住址',
  `laiyuan_types` int(11) DEFAULT NULL COMMENT '客户来源 Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `kehu_email` varchar(200) DEFAULT NULL COMMENT '客户邮箱',
  `kehu_content` text COMMENT '客户备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='客户';

/*Data for the table `kehu` */

insert  into `kehu`(`id`,`xiaoshourenyuan_id`,`kehu_uuid_number`,`kehu_name`,`kehu_phone`,`kehu_id_number`,`kehu_photo`,`kehu_zhuzhi`,`laiyuan_types`,`sex_types`,`age`,`kehu_email`,`kehu_content`,`insert_time`,`create_time`) values (1,3,'1677551414481','客户姓名1','17703786901','410224199010102001','upload/kehu1.jpg','客户住址1',1,2,409,'1@qq.com','客户备注1','2023-02-28 10:30:14','2023-02-28 10:30:14'),(2,3,'1677551414472','客户姓名2','17703786902','410224199010102002','upload/kehu2.jpg','客户住址2',3,2,407,'2@qq.com','客户备注2','2023-02-28 10:30:14','2023-02-28 10:30:14'),(3,3,'1677551414431','客户姓名3','17703786903','410224199010102003','upload/kehu3.jpg','客户住址3',3,2,184,'3@qq.com','客户备注3','2023-02-28 10:30:14','2023-02-28 10:30:14'),(4,1,'1677551414439','客户姓名4','17703786904','410224199010102004','upload/kehu4.jpg','客户住址4',1,2,65,'4@qq.com','客户备注4','2023-02-28 10:30:14','2023-02-28 10:30:14'),(5,1,'1677551414401','客户姓名5','17703786905','410224199010102005','upload/kehu5.jpg','客户住址5',3,1,252,'5@qq.com','客户备注5','2023-02-28 10:30:14','2023-02-28 10:30:14'),(6,1,'1677551414462','客户姓名6','17703786906','410224199010102006','upload/kehu6.jpg','客户住址6',3,1,276,'6@qq.com','客户备注6','2023-02-28 10:30:14','2023-02-28 10:30:14'),(7,1,'1677551414448','客户姓名7','17703786907','410224199010102007','upload/kehu7.jpg','客户住址7',3,2,221,'7@qq.com','客户备注7','2023-02-28 10:30:14','2023-02-28 10:30:14'),(8,1,'1677551414404','客户姓名8','17703786908','410224199010102008','upload/kehu8.jpg','客户住址8',1,2,124,'8@qq.com','客户备注8','2023-02-28 10:30:14','2023-02-28 10:30:14'),(9,2,'1677551414430','客户姓名9','17703786909','410224199010102009','upload/kehu9.jpg','客户住址9',2,1,461,'9@qq.com','客户备注9','2023-02-28 10:30:14','2023-02-28 10:30:14'),(10,3,'1677551414463','客户姓名10','17703786910','410224199010102010','upload/kehu10.jpg','客户住址10',3,1,221,'10@qq.com','客户备注10','2023-02-28 10:30:14','2023-02-28 10:30:14'),(11,3,'1677551414427','客户姓名11','17703786911','410224199010102011','upload/kehu11.jpg','客户住址11',3,2,359,'11@qq.com','客户备注11','2023-02-28 10:30:14','2023-02-28 10:30:14'),(12,3,'1677551414441','客户姓名12','17703786912','410224199010102012','upload/kehu12.jpg','客户住址12',3,2,460,'12@qq.com','客户备注12','2023-02-28 10:30:14','2023-02-28 10:30:14'),(13,3,'1677551414477','客户姓名13','17703786913','410224199010102013','upload/kehu13.jpg','客户住址13',1,1,18,'13@qq.com','<p>客户备注13</p>','2023-02-28 10:30:14','2023-02-28 10:30:14'),(14,2,'1677551414483','客户姓名14','17703786914','410224199010102014','upload/kehu14.jpg','客户住址14',3,2,9,'14@qq.com','客户备注14','2023-02-28 10:30:14','2023-02-28 10:30:14');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongyingshang_id` int(11) DEFAULT NULL COMMENT '供应商',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '进价',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '售价 ',
  `cangku_types` int(11) DEFAULT NULL COMMENT '仓库',
  `daoqi_time` timestamp NULL DEFAULT NULL COMMENT '到期时间',
  `shangpin_content` text COMMENT '商品介绍 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`gongyingshang_id`,`shangpin_uuid_number`,`shangpin_name`,`shangpin_photo`,`shangpin_danwei`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_new_money`,`shangpin_old_money`,`cangku_types`,`daoqi_time`,`shangpin_content`,`insert_time`,`create_time`) values (1,1,'1677551414477','商品名称1','upload/shangpin1.jpg','个',4,101,'117.99','922.87',2,'2023-02-28 10:30:14','商品介绍1','2023-02-28 10:30:14','2023-02-28 10:30:14'),(2,2,'1677551414513','商品名称2','upload/shangpin2.jpg','个',3,102,'131.03','718.70',2,'2023-02-28 10:30:14','商品介绍2','2023-02-28 10:30:14','2023-02-28 10:30:14'),(3,3,'1677551414478','商品名称3','upload/shangpin3.jpg','个',4,9,'37.18','680.12',1,'2023-02-28 10:30:14','商品介绍3','2023-02-28 10:30:14','2023-02-28 10:30:14'),(4,4,'1677551414524','商品名称4','upload/shangpin4.jpg','个',2,104,'476.48','535.70',2,'2023-02-28 10:30:14','商品介绍4','2023-02-28 10:30:14','2023-02-28 10:30:14'),(5,5,'1677551414484','商品名称5','upload/shangpin5.jpg','个',3,105,'318.22','759.32',2,'2023-02-28 10:30:14','商品介绍5','2023-02-28 10:30:14','2023-02-28 10:30:14'),(6,6,'1677551414516','商品名称6','upload/shangpin6.jpg','个',3,106,'496.19','835.39',2,'2023-02-28 10:30:14','商品介绍6','2023-02-28 10:30:14','2023-02-28 10:30:14'),(7,7,'1677551414474','商品名称7','upload/shangpin7.jpg','个',1,107,'270.98','807.63',2,'2023-02-28 10:30:14','商品介绍7','2023-02-28 10:30:14','2023-02-28 10:30:14'),(8,8,'1677551414511','商品名称8','upload/shangpin8.jpg','个',1,106,'35.72','675.54',1,'2023-02-28 10:30:14','商品介绍8','2023-02-28 10:30:14','2023-02-28 10:30:14'),(9,9,'1677551414519','商品名称9','upload/shangpin9.jpg','个',3,109,'101.24','998.15',1,'2023-02-28 10:30:14','商品介绍9','2023-02-28 10:30:14','2023-02-28 10:30:14'),(10,10,'1677551414459','商品名称10','upload/shangpin10.jpg','个',2,1010,'21.65','727.20',1,'2023-02-28 10:30:14','商品介绍10','2023-02-28 10:30:14','2023-02-28 10:30:14'),(11,11,'1677551414484','商品名称11','upload/shangpin11.jpg','个',2,1011,'132.79','520.13',2,'2023-02-28 10:30:14','商品介绍11','2023-02-28 10:30:14','2023-02-28 10:30:14'),(12,12,'1677551414533','商品名称12','upload/shangpin12.jpg','个',3,1012,'143.31','844.85',1,'2023-02-28 10:30:14','商品介绍12','2023-02-28 10:30:14','2023-02-28 10:30:14'),(13,13,'1677551414491','商品名称13','upload/shangpin13.jpg','个',2,1012,'487.43','727.79',2,'2023-02-28 10:30:14','商品介绍13','2023-02-28 10:30:14','2023-02-28 10:30:14'),(14,14,'1677551414473','商品名称14','upload/shangpin14.jpg','个',2,1024,'214.30','973.31',2,'2023-02-28 10:30:14','商品介绍14','2023-02-28 10:30:14','2023-02-28 10:30:14');

/*Table structure for table `shangpincuruku` */

DROP TABLE IF EXISTS `shangpincuruku`;

CREATE TABLE `shangpincuruku` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `cangkurenyuan_id` int(11) DEFAULT NULL COMMENT '仓库人员',
  `shangpincuruku_uuid_number` varchar(200) DEFAULT NULL COMMENT '出入库编号',
  `shangpincuruku_name` varchar(200) DEFAULT NULL COMMENT '出入库标题  Search111 ',
  `shangpincuruku_types` int(11) DEFAULT NULL COMMENT '类型 Search111',
  `caozuo_number` int(11) DEFAULT NULL COMMENT '操作数量',
  `jieqing_types` int(11) DEFAULT NULL COMMENT '钱款结清 Search111',
  `shangpincuruku_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='商品出入库';

/*Data for the table `shangpincuruku` */

insert  into `shangpincuruku`(`id`,`shangpin_id`,`cangkurenyuan_id`,`shangpincuruku_uuid_number`,`shangpincuruku_name`,`shangpincuruku_types`,`caozuo_number`,`jieqing_types`,`shangpincuruku_content`,`insert_time`,`create_time`) values (1,1,3,'1677551414541','出入库标题1',2,494,1,'备注1','2023-02-28 10:30:14','2023-02-28 10:30:14'),(2,2,3,'1677551414514','出入库标题2',2,454,1,'备注2','2023-02-28 10:30:14','2023-02-28 10:30:14'),(3,3,2,'1677551414531','出入库标题3',1,8,2,'备注3','2023-02-28 10:30:14','2023-02-28 10:30:14'),(4,4,2,'1677551414472','出入库标题4',2,427,2,'备注4','2023-02-28 10:30:14','2023-02-28 10:30:14'),(5,5,1,'1677551414457','出入库标题5',1,356,1,'备注5','2023-02-28 10:30:14','2023-02-28 10:30:14'),(6,6,3,'1677551414459','出入库标题6',1,95,2,'备注6','2023-02-28 10:30:14','2023-02-28 10:30:14'),(7,7,1,'1677551414520','出入库标题7',2,196,1,'备注7','2023-02-28 10:30:14','2023-02-28 10:30:14'),(8,8,2,'1677551414462','出入库标题8',2,316,2,'备注8','2023-02-28 10:30:14','2023-02-28 10:30:14'),(9,9,2,'1677551414517','出入库标题9',2,299,2,'备注9','2023-02-28 10:30:14','2023-02-28 10:30:14'),(10,10,1,'1677551414471','出入库标题10',2,281,2,'备注10','2023-02-28 10:30:14','2023-02-28 10:30:14'),(11,11,2,'1677551414536','出入库标题11',2,131,2,'备注11','2023-02-28 10:30:14','2023-02-28 10:30:14'),(12,12,1,'1677551414505','出入库标题12',1,26,1,'备注12','2023-02-28 10:30:14','2023-02-28 10:30:14'),(13,13,2,'1677551414536','出入库标题13',1,89,1,'备注13','2023-02-28 10:30:14','2023-02-28 10:30:14'),(14,14,3,'1677551414460','出入库标题14',1,170,2,'备注14','2023-02-28 10:30:14','2023-02-28 10:30:14'),(15,14,1,'1677561211036','入库10个',1,10,2,'<p>广东省格式的</p>','2023-02-28 13:13:50','2023-02-28 13:13:50'),(16,13,1,'1677561241012','出库1个',2,1,2,'<p>非广东省</p>','2023-02-28 13:14:23','2023-02-28 13:14:23');

/*Table structure for table `shangpinxiaoshou` */

DROP TABLE IF EXISTS `shangpinxiaoshou`;

CREATE TABLE `shangpinxiaoshou` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `kehu_id` int(11) DEFAULT NULL COMMENT '客户',
  `xiaoshourenyuan_id` int(11) DEFAULT NULL COMMENT '销售人员',
  `shangpinxiaoshou_uuid_number` varchar(200) DEFAULT NULL COMMENT '销售编号 Search111 ',
  `shangpinxiaoshou_name` varchar(200) DEFAULT NULL COMMENT '销售标题 Search111 ',
  `caozuo_number` int(11) DEFAULT NULL COMMENT '销售数量',
  `jieqing_types` int(11) DEFAULT NULL COMMENT '钱款结清 Search111',
  `huafei_money` decimal(10,2) DEFAULT NULL COMMENT '销售金额',
  `xiaoshou_time` timestamp NULL DEFAULT NULL COMMENT '销售时间',
  `shangpinxiaoshou_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品销售';

/*Data for the table `shangpinxiaoshou` */

insert  into `shangpinxiaoshou`(`id`,`shangpin_id`,`kehu_id`,`xiaoshourenyuan_id`,`shangpinxiaoshou_uuid_number`,`shangpinxiaoshou_name`,`caozuo_number`,`jieqing_types`,`huafei_money`,`xiaoshou_time`,`shangpinxiaoshou_content`,`insert_time`,`create_time`) values (1,10,1,2,'1677551414530','销售标题1',380,2,'123.05','2023-01-28 10:30:14','备注1','2023-02-28 10:30:14','2023-02-28 10:30:14'),(2,11,2,1,'1677551414476','销售标题2',330,2,'412.91','2023-01-28 10:30:14','备注2','2023-02-28 10:30:14','2023-02-28 10:30:14'),(3,12,3,1,'1677551414510','销售标题3',302,2,'353.94','2023-01-28 10:30:14','备注3','2023-02-28 10:30:14','2023-02-28 10:30:14'),(4,13,4,1,'1677551414476','销售标题4',218,1,'163.56','2023-01-28 10:30:14','备注4','2023-02-28 10:30:14','2023-02-28 10:30:14'),(5,5,5,2,'1677551414528','销售标题5',185,1,'724.12','2023-02-28 10:30:14','备注5','2023-02-28 10:30:14','2023-02-28 10:30:14'),(6,6,6,2,'1677551414505','销售标题6',5,2,'82.07','2023-02-28 10:30:14','备注6','2023-02-28 10:30:14','2023-02-28 10:30:14'),(7,7,7,2,'1677551414479','销售标题7',39,2,'496.22','2023-02-28 10:30:14','备注7','2023-02-28 10:30:14','2023-02-28 10:30:14'),(8,8,8,3,'1677551414534','销售标题8',138,1,'684.83','2023-02-28 10:30:14','备注8','2023-02-28 10:30:14','2023-02-28 10:30:14'),(9,9,9,3,'1677551414454','销售标题9',475,2,'597.26','2023-02-28 10:30:14','备注9','2023-02-28 10:30:14','2023-02-28 10:30:14'),(10,10,10,1,'1677551414467','销售标题10',403,2,'531.74','2023-02-28 10:30:14','备注10','2023-02-28 10:30:14','2023-02-28 10:30:14'),(11,11,11,3,'1677551414471','销售标题11',320,1,'289.78','2023-02-28 10:30:14','备注11','2023-02-28 10:30:14','2023-02-28 10:30:14'),(12,12,12,2,'1677551414510','销售标题12',172,2,'428.45','2023-02-28 10:30:14','备注12','2023-02-28 10:30:14','2023-02-28 10:30:14'),(13,13,13,2,'1677551414519','销售标题13',372,1,'502.81','2023-02-28 10:30:14','备注13','2023-02-28 10:30:14','2023-02-28 10:30:14'),(14,14,14,3,'1677551414483','销售标题14',412,2,'518.51','2023-02-28 10:30:14','备注14','2023-02-28 10:30:14','2023-02-28 10:30:14'),(15,8,4,1,'1677561095782','2023-2-28销售10个',2,2,'1755.40','2023-02-28 13:11:59','<p>广东省广东省固定</p>','2023-02-28 13:12:02','2023-02-28 13:12:02');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','noha0qf55hnomhc188ooy86psxuuy9j5','2023-02-28 10:35:17','2023-02-28 14:26:17'),(2,1,'a1','xiaoshourenyuan','销售人员','2mpq9rocg9sd73gm51r5i45ecklioius','2023-02-28 13:09:34','2023-02-28 14:13:09'),(3,1,'a1','cangkurenyuan','仓库人员','1ues1eagfnqhdz1ujha0ut1j4wvm0aio','2023-02-28 13:11:05','2023-02-28 14:13:18');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-02-28 10:29:19');

/*Table structure for table `xiaoshourenyuan` */

DROP TABLE IF EXISTS `xiaoshourenyuan`;

CREATE TABLE `xiaoshourenyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xiaoshourenyuan_name` varchar(200) DEFAULT NULL COMMENT '销售人员姓名 Search111 ',
  `xiaoshourenyuan_phone` varchar(200) DEFAULT NULL COMMENT '销售人员手机号',
  `xiaoshourenyuan_id_number` varchar(200) DEFAULT NULL COMMENT '销售人员身份证号',
  `xiaoshourenyuan_photo` varchar(200) DEFAULT NULL COMMENT '销售人员照片',
  `xiaoshourenyuan_zhuzhi` varchar(200) DEFAULT NULL COMMENT '现住址',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `xiaoshourenyuan_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='销售人员';

/*Data for the table `xiaoshourenyuan` */

insert  into `xiaoshourenyuan`(`id`,`username`,`password`,`xiaoshourenyuan_name`,`xiaoshourenyuan_phone`,`xiaoshourenyuan_id_number`,`xiaoshourenyuan_photo`,`xiaoshourenyuan_zhuzhi`,`sex_types`,`xiaoshourenyuan_email`,`create_time`) values (1,'a1','123456','销售人员姓名1','17703786901','410224199010102001','upload/xiaoshourenyuan1.jpg','现住址1',2,'1@qq.com','2023-02-28 10:30:14'),(2,'a2','123456','销售人员姓名2','17703786902','410224199010102002','upload/xiaoshourenyuan2.jpg','现住址2',1,'2@qq.com','2023-02-28 10:30:14'),(3,'a3','123456','销售人员姓名3','17703786903','410224199010102003','upload/xiaoshourenyuan3.jpg','现住址3',1,'3@qq.com','2023-02-28 10:30:14');

/*Table structure for table `xiaoshoutuihuo` */

DROP TABLE IF EXISTS `xiaoshoutuihuo`;

CREATE TABLE `xiaoshoutuihuo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpinxiaoshou_id` int(11) DEFAULT NULL COMMENT '商品销售',
  `xiaoshoutuihuo_uuid_number` varchar(200) DEFAULT NULL COMMENT '退货编号 Search111 ',
  `caozuo_number` int(11) DEFAULT NULL COMMENT '退货数量',
  `xiaoshoutuihuo_yuanyou_content` text COMMENT '退货缘由',
  `tuihuan_jine` decimal(10,2) DEFAULT NULL COMMENT '退还金额',
  `tuihuo_time` timestamp NULL DEFAULT NULL COMMENT '退货时间',
  `xiaoshoutuihuo_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品退货';

/*Data for the table `xiaoshoutuihuo` */

insert  into `xiaoshoutuihuo`(`id`,`shangpinxiaoshou_id`,`xiaoshoutuihuo_uuid_number`,`caozuo_number`,`xiaoshoutuihuo_yuanyou_content`,`tuihuan_jine`,`tuihuo_time`,`xiaoshoutuihuo_content`,`insert_time`,`create_time`) values (1,1,'1677551414527',106,'退货缘由1','49.48','2023-02-28 10:30:14','备注1','2023-02-28 10:30:14','2023-02-28 10:30:14'),(2,2,'1677551414468',106,'退货缘由2','752.56','2023-02-28 10:30:14','备注2','2023-02-28 10:30:14','2023-02-28 10:30:14'),(3,3,'1677551414498',321,'退货缘由3','602.58','2023-02-28 10:30:14','备注3','2023-02-28 10:30:14','2023-02-28 10:30:14'),(4,4,'1677551414470',163,'退货缘由4','919.86','2023-02-28 10:30:14','备注4','2023-02-28 10:30:14','2023-02-28 10:30:14'),(5,5,'1677551414524',475,'退货缘由5','151.13','2023-02-28 10:30:14','备注5','2023-02-28 10:30:14','2023-02-28 10:30:14'),(6,6,'1677551414478',262,'退货缘由6','174.75','2023-02-28 10:30:14','备注6','2023-02-28 10:30:14','2023-02-28 10:30:14'),(7,7,'1677551414494',130,'退货缘由7','849.61','2023-02-28 10:30:14','备注7','2023-02-28 10:30:14','2023-02-28 10:30:14'),(8,8,'1677551414476',431,'退货缘由8','322.57','2023-02-28 10:30:14','备注8','2023-02-28 10:30:14','2023-02-28 10:30:14'),(9,9,'1677551414476',4,'退货缘由9','679.60','2023-02-28 10:30:14','备注9','2023-02-28 10:30:14','2023-02-28 10:30:14'),(10,10,'1677551414472',68,'退货缘由10','658.31','2023-02-28 10:30:14','备注10','2023-02-28 10:30:14','2023-02-28 10:30:14'),(11,11,'1677551414482',251,'退货缘由11','845.94','2023-02-28 10:30:14','备注11','2023-02-28 10:30:14','2023-02-28 10:30:14'),(12,12,'1677551414522',70,'退货缘由12','268.56','2023-02-28 10:30:14','备注12','2023-02-28 10:30:14','2023-02-28 10:30:14'),(13,13,'1677551414535',245,'退货缘由13','167.23','2023-02-28 10:30:14','备注13','2023-02-28 10:30:14','2023-02-28 10:30:14'),(14,14,'1677551414456',63,'退货缘由14','557.34','2023-02-28 10:30:14','备注14','2023-02-28 10:30:14','2023-02-28 10:30:14'),(15,15,'1677561134542',8,'<p>发的是广东省</p>','5000.00','2023-02-28 13:12:24','<p>无</p>','2023-02-28 13:12:44','2023-02-28 13:12:44');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
