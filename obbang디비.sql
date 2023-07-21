CREATE DATABASE obbang default CHARACTER SET UTF8; 
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

DROP TABLE IF EXISTS `vam_board`;

CREATE TABLE `board` (
  `board_id` int NOT NULL,
  `board_name` varchar(30) NOT NULL,
  `board_cnt` int NOT NULL,
  `board_date` date NOT NULL,
  `board_content` varchar(100) NOT NULL,
  `board_title` varchar(30) NOT NULL,
  PRIMARY KEY (`board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `board` */

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `gds` int NOT NULL,
  `cartStock` int NOT NULL,
  `addDate` date DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `cart` */

insert  into `cart`(`cart_id`,`user_id`,`gds`,`cartStock`,`addDate`) values 
(1,'kuzuro@gmail.com',21,99,NULL);

/*Table structure for table `event` */

DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
  `event_number` int NOT NULL,
  `event_title` varchar(200) NOT NULL,
  `event_content` varchar(1000) DEFAULT '내용없음',
  `event_regdate` datetime DEFAULT NULL,
  `event_viewcnt` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`event_number`),
  KEY `event_viewcnt` (`event_viewcnt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `event` */

/*Table structure for table `images` */

DROP TABLE IF EXISTS `images`;

CREATE TABLE `images` (
  `images_id` int NOT NULL,
  `images_data` mediumblob,
  PRIMARY KEY (`images_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `images` */

/*Table structure for table `store` */

DROP TABLE IF EXISTS `store`;

CREATE TABLE `store` (
  `store_id` int NOT NULL,
  `store_store` varchar(30) NOT NULL,
  `store_menu` varchar(30) NOT NULL,
  `store_price` int NOT NULL,
  `store_adress` varchar(100) NOT NULL,
  `store_tel` varchar(20) NOT NULL,
  `store_info` varchar(100) NOT NULL,
  `store_category` varchar(30) NOT NULL,
  PRIMARY KEY (`store_id`),
  CONSTRAINT `store_id` FOREIGN KEY (`store_id`) REFERENCES `cart_item` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `store` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` varchar(50) NOT NULL,
  `user_pw` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_pw2` varchar(30) NOT NULL,
  `user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_age` int DEFAULT NULL,
  `user_sex` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_phone` varchar(30) NOT NULL,
  `user_address` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `user` */

insert  into `user`(`user_id`,`user_pw`,`user_pw2`,`user_name`,`user_age`,`user_sex`,`user_email`,`user_phone`,`user_address`) values 
('hong','1234','1234','홍길동',21,'남자','hong@hong.com','111-1111','쌍문동');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

insert into board(board_title, board_content, board_writer) values ('테스트 제목', '테스트 내용', '작가');
insert into board(board_title, board_content, board_writer) values ('테스트 제목', '테스트 내용', '작가');
insert into board(board_title, board_content, board_writer) values ('테스트 제목', '테스트 내용', '작가');
 
-- 게시판 테이블
create table board(
    board_bno int auto_increment, 
    board_title varchar(150),
    board_content varchar(2000),
    board_writer varchar(50),
    board_regdate timestamp default now(),
    board_updatedate timestamp default now(),
    constraint pk_board PRIMARY key(board_bno)
);
DROP TABLE IF EXISTS `vam_board`;
delete from board where bno = '삭제할 게시판 번호';

insert into board(board_title,board_content,board_writer)(select board_title,board_content, board_writer from board);
select count(*) from board;

 
select rn, board_bno, board_title, board_content, board_writer, board_regdate, board_updatedate from(
 
        select /*+INDEX_DESC(vam_board pk_board) */ rownum as rn, board_bno, board_title, board_content, board_writer, board_regdate, board_updatedate
 
        from board)
        -- select rownum as rownum as rn, bno, title, content, writer, regdate, updatedate from vam_board order by bno desc
 
where rn between 11 and 20;
    -- rn > 10 and rn <= 20;
    
    select * from 
        (select @rownum := @rownum + 1 as rn, board_bno, board_title, board_writer, board_regdate, board_updatedate 
        from board, (select @rownum := 0)  as rowcolumn order by bno desc) as rownum_table  
where rn > 10 and rn <=20;

-- 댓글 테이블
create table reply(
    reply_rno int auto_increment primary key,
    board_bno int not null,
    reply_writer varchar(50) not null,
    reply_regDate timestamp default now(),
    reply_content varchar(3500),
   
   FOREIGN KEY(breplyoard_bno) REFERENCES board(board_bno)
);

-- 이벤트게시판 테이블
CREATE TABLE `event` (
  `event_eno` int NOT NULL AUTO_INCREMENT,
  `event_title` varchar(200) NOT NULL,
  `event_content` varchar(1000) DEFAULT '내용없음',
  `event_regdate`  timestamp NULL DEFAULT CURRENT_TIMESTAMP,

  PRIMARY KEY (`event_eno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


select event_eno, event_title, event_content, event_regdate
from event order by event_eno desc 
limit 4, 10;

-- 재귀 복사
insert into event(event_title,event_content)(select event_titl ,event_content from event);


CREATE TABLE `event` (
  `event_eno` int NOT NULL AUTO_INCREMENT,
  `event_title` varchar(200) NOT NULL,
  `event_content` varchar(1000) DEFAULT '내용없음',
  `event_regdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `event_image` longtext,
  PRIMARY KEY (`event_eno`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
SELECT * FROM obbang.board;

CREATE TABLE `notice` (
  `Notice_nno` int NOT NULL AUTO_INCREMENT,
  `Notice_title` varchar(150) DEFAULT NULL,
  `Notice_content` varchar(2000) DEFAULT NULL,
  `Notice_writer` varchar(50) DEFAULT NULL,reply
  `Notice_regdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Notice_nno`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb3;

create table image(
        event_eno int ,
        fileName varchar(100) not null,
        uploadPath varchar(200) not null,
        uuid varchar(100)not null ,
        primary key (uuid),
        foreign key (event_eno) references event(event_eno)
    );

CREATE TABLE `reply` (
  `reply_rno` int NOT NULL AUTO_INCREMENT,
  `board_bno` int NOT NULL,
  `reply_writer` varchar(50) NOT NULL,
  `reply_regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `reply_content` varchar(3500) DEFAULT NULL,
  PRIMARY KEY (`reply_rno`,`board_bno`),
  KEY `board_bno` (`board_bno`),
  CONSTRAINT `reply_ibfk_1` FOREIGN KEY (`board_bno`) REFERENCES `board` (`board_bno`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb3;

UPDATE board
SET board_viewCount = board_viewCount + 1
WHERE board_bno = 5;
