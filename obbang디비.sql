/*
SQLyog Community v13.2.0 (64 bit)
MySQL - 8.0.32 : Database - obbang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`obbang` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `obbang`;

/*Table structure for table `board` */

DROP TABLE IF EXISTS `board`;

CREATE TABLE `board` (
  `board_bno` int NOT NULL AUTO_INCREMENT,
  `board_title` varchar(150) DEFAULT NULL,
  `board_content` varchar(2000) DEFAULT NULL,
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `board_regdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `board_updatedate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_boardname` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`board_bno`),
  KEY `fk_board_user` (`user_id`),
  CONSTRAINT `fk_board_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=575 DEFAULT CHARSET=utf8mb3;

/*Data for the table `board` */

insert  into `board`(`board_bno`,`board_title`,`board_content`,`user_id`,`board_regdate`,`board_updatedate`,`user_boardname`) values 
(564,'문의사항이있습니다.','무늬는 포도가 먹고 시푼뎅...','user1','2023-04-27 17:57:52','2023-04-27 17:57:52','유저1'),
(565,'파리바게트 ','굿굿','user1','2023-05-01 16:48:40','2023-05-01 16:48:40','유저1'),
(566,'뚜레쥬르','굿굿','user1','2023-05-01 16:48:50','2023-05-01 16:48:50','유저1'),
(567,'할리스 굿굿','굿굿','user2','2023-05-01 16:49:15','2023-05-01 16:49:15','유저2'),
(568,'obbang','짱짱','user2','2023-05-01 16:49:39','2023-05-01 16:49:39','유저2'),
(569,'가맹주 모집','굿굿','user2','2023-05-01 16:50:37','2023-05-01 16:50:37','유저2'),
(570,'ppt 발표','굿굿','member1','2023-05-01 16:51:24','2023-05-01 16:51:24','맴버1'),
(571,'김도균씨','굿굿','member1','2023-05-01 16:51:52','2023-05-01 16:51:52','맴버1'),
(572,'빵지순례','짱짱','member1','2023-05-01 16:52:31','2023-05-01 16:52:31','맴버1'),
(573,'힘들엇다','굿굿','member1','2023-05-01 16:54:31','2023-05-01 16:54:31','맴버1'),
(574,'김기현씨','ppt 굿굿','member2','2023-05-01 16:57:22','2023-05-01 16:57:22','맴버2');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
