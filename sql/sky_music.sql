/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 5.7.34-log : Database - sky_music
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sky_music` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sky_music`;

/*Table structure for table `album` */

DROP TABLE IF EXISTS `album`;

CREATE TABLE `album` (
  `album_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '专辑ID',
  `album_name` varchar(30) NOT NULL DEFAULT '无' COMMENT '专辑名',
  `is_deleted` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `album` */

/*Table structure for table `singer` */

DROP TABLE IF EXISTS `singer`;

CREATE TABLE `singer` (
  `singer_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '歌手ID',
  `singer_name` varchar(30) NOT NULL DEFAULT '佚名' COMMENT '歌手姓名',
  `is_deleted` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`singer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `singer` */

insert  into `singer`(`singer_id`,`singer_name`,`is_deleted`,`create_time`,`update_time`) values 
(1,'佚名',0,'2023-12-24 15:01:47','2023-12-24 15:01:47');

/*Table structure for table `song` */

DROP TABLE IF EXISTS `song`;

CREATE TABLE `song` (
  `song_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '歌曲ID',
  `singer_id` bigint(20) unsigned NOT NULL COMMENT '歌曲歌手ID',
  `album_id` bigint(20) unsigned NOT NULL COMMENT '歌曲专辑ID',
  `song_name` varchar(30) NOT NULL COMMENT '歌曲名称',
  `song_source` varchar(30) DEFAULT NULL COMMENT '歌曲出处',
  `song_url` varchar(600) NOT NULL COMMENT '歌曲地址',
  `is_deleted` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`song_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;

/*Data for the table `song` */

insert  into `song`(`song_id`,`singer_id`,`album_id`,`song_name`,`song_source`,`song_url`,`is_deleted`,`create_time`,`update_time`) values 
(1,1,1,'晴天','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/87fbb69376504385b94ed562ef321bdd%E5%8F%B6%E6%83%A0%E7%BE%8E---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E6%99%B4%E5%A4%A9.flac?Expires=2019045451&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=rVYz%2F97RQTmTe%2BDDbtLZW29b9Uo%3D',0,'2023-12-24 21:57:32','2023-12-24 21:57:56'),
(3,1,1,'美人鱼','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/47781c05ce814def8f37e2d296666b3d%E5%93%8E%E5%91%A6%EF%BC%8C%E4%B8%8D%E9%94%99%E5%93%A6---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E7%BE%8E%E4%BA%BA%E9%B1%BC.flac?Expires=2019044060&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=HZYc%2B1Zx24DnAVDjyrtRd%2F5hJO8%3D',0,'2023-12-24 21:35:47','2023-12-24 21:57:53'),
(4,1,1,'手写的从前','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/72415b655620487b8ef4877b082db6c8%E5%93%8E%E5%91%A6%EF%BC%8C%E4%B8%8D%E9%94%99%E5%93%A6---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E6%89%8B%E5%86%99%E7%9A%84%E4%BB%8E%E5%89%8D.flac?Expires=2019044243&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=jwKLNlU%2BtujF%2FYSzhX3mImNqD5c%3D',0,'2023-12-24 21:37:25','2023-12-24 21:37:25'),
(5,1,1,'算什么男人','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/3115c1e76f0b440f80bbd67de5f3e16f%E5%93%8E%E5%91%A6%EF%BC%8C%E4%B8%8D%E9%94%99%E5%93%A6---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E7%AE%97%E4%BB%80%E4%B9%88%E7%94%B7%E4%BA%BA.flac?Expires=2019044356&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=Xzf2a%2F4WXMhjEXk98uKPktsmdYs%3D',0,'2023-12-24 21:39:18','2023-12-24 21:39:18'),
(6,1,1,'天涯过客','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/b4d9f916696f44b5ac60f95a04bee76c%E5%93%8E%E5%91%A6%EF%BC%8C%E4%B8%8D%E9%94%99%E5%93%A6---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E5%A4%A9%E6%B6%AF%E8%BF%87%E5%AE%A2.flac?Expires=2019044390&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=v3PwqgKbh%2BAc3Heuw2JySo%2B9Xcc%3D',0,'2023-12-24 21:39:51','2023-12-24 21:39:51'),
(7,1,1,'听见下雨的声音','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/524a34cd7fb445ce95c17e41f7151273%E5%93%8E%E5%91%A6%EF%BC%8C%E4%B8%8D%E9%94%99%E5%93%A6---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E5%90%AC%E8%A7%81%E4%B8%8B%E9%9B%A8%E7%9A%84%E5%A3%B0%E9%9F%B3.flac?Expires=2019044779&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=vhex11WZt7g66WyyhADVT%2BXL55g%3D',0,'2023-12-24 21:46:20','2023-12-24 21:46:20'),
(8,1,1,'鞋子特大号','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/476ad9a0e1f3428f86fb70689952df5f%E5%93%8E%E5%91%A6%EF%BC%8C%E4%B8%8D%E9%94%99%E5%93%A6---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E9%9E%8B%E5%AD%90%E7%89%B9%E5%A4%A7%E5%8F%B7.flac?Expires=2019044792&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=XxLNWSmrOV9M2D4Vhb%2FPfhw8GTg%3D',0,'2023-12-24 21:46:38','2023-12-24 21:46:38'),
(9,1,1,'夜曲','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/4cb38ac4ce4d4461839dc44b309ab27f%E7%AC%AC%E5%85%AD%E7%95%8C---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E5%A4%9C%E6%9B%B2.flac?Expires=2019044818&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=QXH6zStImMuGWVQSVLEZUBZyJSY%3D',0,'2023-12-24 21:46:59','2023-12-24 21:46:59'),
(10,1,1,'简单爱','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/1230bdbc299348f69b08ced4eddfacd9%E8%8C%83%E7%89%B9%E8%A5%BF---1%E5%91%A8%E6%9D%B0%E4%BC%A6-%E7%AE%80%E5%8D%95%E7%88%B1.flac?Expires=2019044855&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=YTftYK9K8spYvOC7BvAt08noAxY%3D',0,'2023-12-24 21:47:35','2023-12-24 21:47:35'),
(11,1,1,'双截棍','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/d3c8bf1fe5b1400599d7526c7a9ecb00%E8%8C%83%E7%89%B9%E8%A5%BF---09.%20%E9%9B%99%20%E7%AF%80%20%E6%A3%8D.mp3?Expires=2019044863&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=KogWx8clg4oslBtWeh7w3M41yLA%3D',0,'2023-12-24 21:47:49','2023-12-24 21:47:49'),
(12,1,1,'世界末日','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/266f3d8206d848989800593ccf6d3a53%E8%8C%83%E7%89%B9%E8%A5%BFPIUS---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E4%B8%96%E7%95%8C%E6%9C%AB%E6%97%A5%20%28Live%29.flac?Expires=2019044881&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=D9aVOl8gGjMksn%2BQP5zSVcG%2FRZ4%3D',0,'2023-12-24 21:48:04','2023-12-24 21:48:04'),
(13,1,1,'蜗牛','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/98871029abec46e4b5afa0e0a9a7381c%E8%8C%83%E7%89%B9%E8%A5%BFPIUS---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E8%9C%97%E7%89%9B%20%28Live%29.flac?Expires=2019044903&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=YdCyc5dAy%2FeNmtBaiTvwqky0YHU%3D',0,'2023-12-24 21:48:24','2023-12-24 21:48:24'),
(14,1,1,'开不了口','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/60767a71b9ce475687506fea6cd528ff%E8%8C%83%E7%89%B9%E8%A5%BF---%E8%8C%83%E7%89%B9%E8%A5%BF_%E5%BC%80%E4%B8%8D%E4%BA%86.mp3?Expires=2019044918&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=8l7DlBVQFs7ho%2FbNi5tpDodsfPQ%3D',0,'2023-12-24 21:49:02','2023-12-24 21:49:02'),
(15,1,1,'爱在西元前','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/dbc623f586b54730b88b087950f27eb6%E8%8C%83%E7%89%B9%E8%A5%BF---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E7%88%B1%E5%9C%A8%E8%A5%BF%E5%85%83%E5%89%8D.flac?Expires=2019044963&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=Q2RDYNCfjw8U2dp2vuEnIAfTR3g%3D',0,'2023-12-24 21:49:24','2023-12-24 21:49:24'),
(16,1,1,'爸，我回来了','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/a8a75d87dedc48b38b494e34c13f408e%E8%8C%83%E7%89%B9%E8%A5%BF---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E7%88%B8%EF%BC%8C%E6%88%91%E5%9B%9E%E6%9D%A5%E4%BA%86.flac?Expires=2019044986&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=eaLUzIblMQ6oq2Vp7o54lz6jBPU%3D',0,'2023-12-24 21:49:46','2023-12-24 21:49:46'),
(17,1,1,'忍者','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/5d8dc16d01b2424b84dcb3a1be926e0b%E8%8C%83%E7%89%B9%E8%A5%BF---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E5%BF%8D%E8%80%85.flac?Expires=2019044996&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=F7Vvdlq41Ts7P5qe4FuU5jOFfog%3D',0,'2023-12-24 21:49:58','2023-12-24 21:49:58'),
(18,1,1,'安静','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/cb9b85c371db4b1caab090f1a46e1c2d%E8%8C%83%E7%89%B9%E8%A5%BF---%E5%91%A8%E6%9D%B0%E4%BC%A6-%E5%AE%89%E9%9D%99.flac?Expires=2019045012&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=TxlfhatRoHIxObKhxr6OVrXHFRo%3D',0,'2023-12-24 21:50:13','2023-12-24 21:50:13'),
(19,1,1,'不该','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/7a582d38da0743718137c72b46e664c4%E5%B9%BB%E5%9F%8E---%E5%91%A8%E6%9D%B0%E4%BC%A6_%E5%BC%A0%E6%83%A0%E5%A6%B9-%E4%B8%8D%E8%AF%A5.flac?Expires=2019045026&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=WV03V3irGSJwM%2BFMUOaeKST2ESI%3D',0,'2023-12-24 21:50:27','2023-12-24 21:50:27'),
(20,1,1,'霍元甲','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/1924b8c7572345fda8ffbce7d6cf303f%E9%9C%8D%E5%85%83%E7%94%B2---%E5%91%A8%E6%9D%B0%E4%BC%A6-%E9%9C%8D%E5%85%83%E7%94%B2-%E3%80%8A%E9%9C%8D%E5%85%83%E7%94%B2%E3%80%8B%E7%94%B5%E5%BD%B1%E4%B8%BB%E9%A2%98%E6%9B%B2%E4%B8%A8%E3%80%8A%E8%BF%99%EF%BC%81%E5%B0%B1%E6%98%AF%E8%A1%97%E8%88%9E%E3%80%8B%E7%AC%AC%E5%9B%9B%E6%9C%9F%E8%83%8C%E6%99%AF%E9%9F%B3%E4%B9%90.flac?Expires=2019045041&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=GIfwkZyvMVJe7FB7PeZ9QhoCpbE%3D',0,'2023-12-24 21:51:14','2023-12-24 21:51:14'),
(21,1,1,'迷魂曲','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/bd9ef1c62f42465c99bf93f77529d009%E6%83%8A%E5%8F%B9%E5%8F%B7---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E8%BF%B7%E9%AD%82%E6%9B%B2.flac?Expires=2019045091&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=Wwv9fyj36iyUnfQFWNUCgFulPu0%3D',0,'2023-12-24 21:51:32','2023-12-24 21:51:32'),
(22,1,1,'琴伤','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/ff478077947c4a6d862d88e54439aaab%E6%83%8A%E5%8F%B9%E5%8F%B7---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E7%90%B4%E4%BC%A4.flac?Expires=2019045103&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=Su1cotHqoHweHlL4JYtjNR%2F2jqw%3D',0,'2023-12-24 21:51:44','2023-12-24 21:51:44'),
(23,1,1,'好久不见','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/5900ccc6e57a441cabcc2b6cca49cc72%E8%B7%A8%E6%97%B6%E4%BB%A3---05.%20%E5%A5%BD%20%E4%B9%85%E4%B8%8D%20%E8%A6%8B.mp3?Expires=2019045112&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=ZZsLThd9k9aK%2F69GCzDvAT4Q6E8%3D',0,'2023-12-24 21:51:56','2023-12-24 21:51:56'),
(24,1,1,'超人不会飞','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/538daf85dc1744ab91689d3ab6b874d4%E8%B7%A8%E6%97%B6%E4%BB%A3---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E8%B6%85%E4%BA%BA%E4%B8%8D%E4%BC%9A%E9%A3%9E.flac?Expires=2019045130&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=cayGXvQMZLyh8tlR1P0o201IwlU%3D',0,'2023-12-24 21:52:11','2023-12-24 21:52:11'),
(25,1,1,'我落泪情绪零碎','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/8e1a0e1d753747a59ef74e4e3469339a%E8%B7%A8%E6%97%B6%E4%BB%A3---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E6%88%91%E8%90%BD%E6%B3%AA%E6%83%85%E7%BB%AA%E9%9B%B6%E7%A2%8E.flac?Expires=2019045142&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=4gveFxaXy%2BtrKh1Ity0RGuUuKf4%3D',0,'2023-12-24 21:52:29','2023-12-24 21:52:29'),
(26,1,1,'烟花易冷','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/95afc57cf87c4884875aa5f1694785be%E8%B7%A8%E6%97%B6%E4%BB%A3---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E7%83%9F%E8%8A%B1%E6%98%93%E5%86%B7.flac?Expires=2019045161&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=09qxrXZaP%2FWHa8MN7DcEschm48E%3D',0,'2023-12-24 21:52:42','2023-12-24 21:52:42'),
(27,1,1,'自导自演','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/387a09824769476a86d544a72ee3d0d3%E8%B7%A8%E6%97%B6%E4%BB%A3---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E8%87%AA%E5%AF%BC%E8%87%AA%E6%BC%94.flac?Expires=2019045175&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=uVdmLtDXz8p%2FVyPMYKq72idZJD8%3D',0,'2023-12-24 21:52:56','2023-12-24 21:52:56'),
(28,1,1,'爱的飞行日记','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/9809eaf8127441769ee5be84943c9d72%E8%B7%A8%E6%97%B6%E4%BB%A3---%E5%91%A8%E6%9D%B0%E4%BC%A6%3B%E6%9D%A8%E7%91%9E%E4%BB%A3%20-%20%E7%88%B1%E7%9A%84%E9%A3%9E%E8%A1%8C%E6%97%A5%E8%AE%B0.flac?Expires=2019045187&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=ycTOo13PmWdnRxK%2F95a8sTqfJuU%3D',0,'2023-12-24 21:53:08','2023-12-24 21:53:08'),
(29,1,1,'稻香','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/ff9eb601c60c46169add39c743d9fc1e%E9%AD%94%E6%9D%B0%E5%BA%A7---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E7%A8%BB%E9%A6%99.mp3?Expires=2019045207&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=nrY3S2dMONicgdRDAxxskKHc70E%3D',0,'2023-12-24 21:53:29','2023-12-24 21:53:29'),
(30,1,1,'给我一首歌的时间','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/5db8f34216fc44c89e2203ef4717b9ba%E9%AD%94%E6%9D%B0%E5%BA%A7---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E7%BB%99%E6%88%91%E4%B8%80%E9%A6%96%E6%AD%8C%E7%9A%84%E6%97%B6%E9%97%B4.flac?Expires=2019045232&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=1dSCI0M41JP8pbLUfwbQSta7zTA%3D',0,'2023-12-24 21:53:53','2023-12-24 21:53:53'),
(31,1,1,'花海','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/d2460c4702944bb1855722947dc5bf4b%E9%AD%94%E6%9D%B0%E5%BA%A7---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E8%8A%B1%E6%B5%B7.flac?Expires=2019045246&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=iH6WQNfeU%2FvokT5MJ0Iuy7v4ni4%3D',0,'2023-12-24 21:54:07','2023-12-24 21:54:07'),
(32,1,1,'兰亭序','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/3dee347b12504cb7bc87a459b9195a08%E9%AD%94%E6%9D%B0%E5%BA%A7---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E5%85%B0%E4%BA%AD%E5%BA%8F.flac?Expires=2019045260&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=l8I87FqzHtFe36iGMdS%2BhFz0VMU%3D',0,'2023-12-24 21:54:21','2023-12-24 21:54:21'),
(33,1,1,'说好的幸福呢','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/67dd3f25dcbf4a30beb6157386b8a4f3%E9%AD%94%E6%9D%B0%E5%BA%A7---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E8%AF%B4%E5%A5%BD%E7%9A%84%E5%B9%B8%E7%A6%8F%E5%91%A2.flac?Expires=2019045271&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=wBEtOPJQa2laeeSwrt2C7OSC6t4%3D',0,'2023-12-24 21:54:31','2023-12-24 21:54:31'),
(34,1,1,'说好不哭','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/659b69a51d374357b19741aadd94fde4%E8%AF%B4%E5%A5%BD%E4%B8%8D%E5%93%AD---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E8%AF%B4%E5%A5%BD%E4%B8%8D%E5%93%AD%C2%A0%28with%C2%A0%E4%BA%94%E6%9C%88%E5%A4%A9%E9%98%BF%E4%BF%A1%29.flac?Expires=2019045292&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=m%2Bs9J5hO21yeZYUZoxYktDcN2VE%3D',0,'2023-12-24 21:54:53','2023-12-24 21:54:53'),
(35,1,1,'彩虹','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/5e11bd21fb5e4e6ba622a9e8bb8f0424%E6%88%91%E5%BE%88%E5%BF%99---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E5%BD%A9%E8%99%B9.flac?Expires=2019045305&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=raJPZ963VtYpVepnla%2BWiotKbPU%3D',0,'2023-12-24 21:55:05','2023-12-24 21:55:05'),
(36,1,1,'牛仔很忙','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/e05f7553d0634757b76c090667af259e%E6%88%91%E5%BE%88%E5%BF%99---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E7%89%9B%E4%BB%94%E5%BE%88%E5%BF%99.flac?Expires=2019045317&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=L02jay21cG2nZHngAYk9HtEHnK4%3D',0,'2023-12-24 21:55:17','2023-12-24 21:55:17'),
(37,1,1,'蒲公英的约定','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/f1639f466d0b4ca3a71f4d9a548b22c3%E6%88%91%E5%BE%88%E5%BF%99---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E8%92%B2%E5%85%AC%E8%8B%B1%E7%9A%84%E7%BA%A6%E5%AE%9A.flac?Expires=2019045337&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=dJKrqgnkzbFh28tJdGc7Nd99Opk%3D',0,'2023-12-24 21:55:38','2023-12-24 21:55:38'),
(38,1,1,'甜甜的','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/39c043b555574b0f90265a0618d682fa%E6%88%91%E5%BE%88%E5%BF%99---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E7%94%9C%E7%94%9C%E7%9A%84.flac?Expires=2019045351&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=HiAw8ZZroiZhH9r7GyMSO4Kn3l8%3D',0,'2023-12-24 21:55:51','2023-12-24 21:55:51'),
(39,1,1,' 我不配','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/a6c56fb348784a12969617ad6747fb77%E6%88%91%E5%BE%88%E5%BF%99---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E6%88%91%E4%B8%8D%E9%85%8D.flac?Expires=2019045363&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=Dex86UYu2KonDEG8CFjFHnMoPlQ%3D',0,'2023-12-24 21:56:06','2023-12-24 21:56:06'),
(40,1,1,'阳光宅男','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/23e5ffae72ce472ebe33acbd54af8d9f%E6%88%91%E5%BE%88%E5%BF%99---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E9%98%B3%E5%85%89%E5%AE%85%E7%94%B7.flac?Expires=2019045380&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=h9%2BJwgZq5IdanyqSfdIUEm2sM94%3D',0,'2023-12-24 21:56:21','2023-12-24 21:56:21'),
(41,1,1,'最长的电影','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/867d890d01464fc0aff51ff0804083f7%E6%88%91%E5%BE%88%E5%BF%99---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E6%9C%80%E9%95%BF%E7%9A%84%E7%94%B5%E5%BD%B1.flac?Expires=2019045396&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=6HcbDC0uY27kv%2FqPfmKyhcDG9Jg%3D',0,'2023-12-24 21:56:37','2023-12-24 21:56:37'),
(42,1,1,'断了的弦','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/ba0f193aae6a4cec8f53e472522bf7ec%E5%AF%BB%E6%89%BE%E5%91%A8%E6%9D%B0%E4%BC%A6---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E6%96%AD%E4%BA%86%E7%9A%84%E5%BC%A6.flac?Expires=2019045423&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=gO9qwGZ5C26SUZFF3vR5eWJ1Abg%3D',0,'2023-12-24 21:57:03','2023-12-24 21:57:03'),
(43,1,1,'轨迹','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/d3074ec481b24e9cad368b360b44744e%E5%AF%BB%E6%89%BE%E5%91%A8%E6%9D%B0%E4%BC%A6---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E8%BD%A8%E8%BF%B9.flac?Expires=2019045439&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=zpD1Cg5Mly9DT5phfyHE81iCGg4%3D',0,'2023-12-24 21:57:19','2023-12-24 21:57:19'),
(45,1,1,'以父之名','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/358eb84b0a4d49c2a11143a6caa97c0c%E5%8F%B6%E6%83%A0%E7%BE%8E---%E5%91%A8%E6%9D%B0%E4%BC%A6-%E4%BB%A5%E7%88%B6%E4%B9%8B%E5%90%8D.flac?Expires=2019045465&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=D2TujJg9PkdJknGzA%2BbMuhlYXuM%3D',0,'2023-12-24 21:58:01','2023-12-24 21:58:01'),
(46,1,1,'夜的第七章','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/083137ce376445a19dbfe487a511f4d1%E4%BE%9D%E7%84%B6%E8%8C%83%E7%89%B9%E8%A5%BF---%E6%BD%98%E5%84%BF%20-%20%E5%A4%9C%E7%9A%84%E7%AC%AC%E4%B8%83%E7%AB%A0.flac?Expires=2019045493&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=fOYrVxpPQNJqeEAxM8r0jCGBMpQ%3D',0,'2023-12-24 21:58:13','2023-12-24 21:58:13'),
(47,1,1,'爱情废柴','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/a6be12a498484c81b022ddd99633fb40%E5%91%A8%E6%9D%B0%E4%BC%A6%E7%9A%84%E5%BA%8A%E8%BE%B9%E6%95%85%E4%BA%8B---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E7%88%B1%E6%83%85%E5%BA%9F%E6%9F%B4.flac?Expires=2019045506&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=o5LGauRJcX0p3nkKv%2BnPW4z4QsM%3D',0,'2023-12-24 21:58:27','2023-12-24 21:58:27'),
(48,1,1,'不该','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/a4d2ef9e0c3b4bfd991139346ae5c727%E5%91%A8%E6%9D%B0%E4%BC%A6%E7%9A%84%E5%BA%8A%E8%BE%B9%E6%95%85%E4%BA%8B---%E5%91%A8%E6%9D%B0%E4%BC%A6-%E4%B8%8D%E8%AF%A5%20%28with%20aMEI%29.flac?Expires=2019045525&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=FPYIlSQz%2F9Tj6I6YFK6zyoheyu4%3D',0,'2023-12-24 21:58:46','2023-12-24 21:58:46'),
(49,1,1,'最伟大的作品','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/b29e8cb4d0c24c33a690a7f15a223c00%E6%9C%80%E4%BC%9F%E5%A4%A7%E7%9A%84%E4%BD%9C%E5%93%81---2%E5%91%A8%E6%9D%B0%E4%BC%A6-.flac?Expires=2019045543&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=pCdJ4Ss6TsRkpfklkQKem09yj%2BU%3D',0,'2023-12-24 21:59:04','2023-12-24 21:59:04'),
(50,1,1,'我是如此相信','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/c4611209e39e4566838be81279dcff97%E6%9C%80%E4%BC%9F%E5%A4%A7%E7%9A%84%E4%BD%9C%E5%93%81---%E6%88%91%E6%98%AF%E5%A6%82%E6%AD%A4%E7%9B%B8.mp3?Expires=2019045557&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=RT0ayd1XGG3C1gXxTARBtHrBoDE%3D',0,'2023-12-24 21:59:26','2023-12-24 21:59:26'),
(51,1,1,'Mojito','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/1374d81734b448cbaf19565744f3914c%E6%9C%80%E4%BC%9F%E5%A4%A7%E7%9A%84%E4%BD%9C%E5%93%81---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20Mojito.flac?Expires=2019045585&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=6niO0SrCabzq7wDATtrWNs3H1XI%3D',0,'2023-12-24 21:59:45','2023-12-24 21:59:45'),
(52,1,1,'等你下课','周杰伦','http://skymusic20231218.oss-cn-shenzhen.aliyuncs.com/345768738889469fb9926fe468a104e0%E6%9C%80%E4%BC%9F%E5%A4%A7%E7%9A%84%E4%BD%9C%E5%93%81---%E5%91%A8%E6%9D%B0%E4%BC%A6%20-%20%E7%AD%89%E4%BD%A0%E4%B8%8B%E8%AF%BE%28with%C2%A0%E6%9D%A8%E7%91%9E%E4%BB%A3%29.flac?Expires=2019045597&OSSAccessKeyId=LTAI5tQK34QSBVRNu4jq3pNQ&Signature=ERX0a8w3MH5jfQ8UtEiH43SrOFU%3D',0,'2023-12-24 21:59:58','2023-12-24 21:59:58');

/*Table structure for table `song_album` */

DROP TABLE IF EXISTS `song_album`;

CREATE TABLE `song_album` (
  `song_id` bigint(20) unsigned NOT NULL COMMENT '歌曲ID',
  `album_id` bigint(20) unsigned NOT NULL COMMENT '专辑ID',
  `is_deleted` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`song_id`,`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `song_album` */

/*Table structure for table `song_singer` */

DROP TABLE IF EXISTS `song_singer`;

CREATE TABLE `song_singer` (
  `song_id` bigint(20) unsigned NOT NULL COMMENT '歌曲ID',
  `singer_id` bigint(20) unsigned NOT NULL COMMENT '歌手ID',
  `is_deleted` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`song_id`,`singer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `song_singer` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
