/*
SQLyog Community Edition- MySQL GUI v8.03 
MySQL - 5.5.20-log : Database - exam
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`exam` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `exam`;

/*Table structure for table `courses` */

DROP TABLE IF EXISTS `courses`;

CREATE TABLE `courses` (
  `Course_id` int(11) NOT NULL AUTO_INCREMENT,
  `Course_name` varchar(25) DEFAULT NULL,
  `Duration` varchar(25) DEFAULT NULL,
  `Std_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `courses` */

insert  into `courses`(`Course_id`,`Course_name`,`Duration`,`Std_id`) values (1,'B.A. (English Literature)','3 Year',NULL),(6,'M.A. (English Literature)','2 Year',NULL);

/*Table structure for table `dept` */

DROP TABLE IF EXISTS `dept`;

CREATE TABLE `dept` (
  `Dept_no` int(11) NOT NULL AUTO_INCREMENT,
  `Dept_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Dept_no`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `dept` */

insert  into `dept`(`Dept_no`,`Dept_name`) values (8,'hffffddseereree');

/*Table structure for table `ec_reg` */

DROP TABLE IF EXISTS `ec_reg`;

CREATE TABLE `ec_reg` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `First_name` varchar(25) DEFAULT NULL,
  `Last_name` varchar(25) DEFAULT NULL,
  `Address` varchar(150) DEFAULT NULL,
  `Dob` date DEFAULT NULL,
  `Qualification` varchar(50) DEFAULT NULL,
  `Phone` int(11) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `Post` varchar(30) DEFAULT NULL,
  `Doj` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ec_reg` */

/*Table structure for table `exam_add` */

DROP TABLE IF EXISTS `exam_add`;

CREATE TABLE `exam_add` (
  `Exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `Exam_Name` varchar(50) DEFAULT NULL,
  `Course` varchar(50) DEFAULT NULL,
  `Subject` varchar(50) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`Exam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `exam_add` */

insert  into `exam_add`(`Exam_id`,`Exam_Name`,`Course`,`Subject`,`Date`) values (1,'first semester exam','2','2','2019-02-23');

/*Table structure for table `examc_reg` */

DROP TABLE IF EXISTS `examc_reg`;

CREATE TABLE `examc_reg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `qualification` varchar(50) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `post` varchar(25) DEFAULT NULL,
  `doj` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `examc_reg` */

insert  into `examc_reg`(`id`,`first_name`,`last_name`,`address`,`dob`,`qualification`,`phone`,`Email`,`post`,`doj`) values (1,'ggg','vggg','gghh','1995-06-16','on',67788998,'hhjuj','ujujuj','2018-05-04'),(2,'achu','k','calicut','1995-06-17','on',45567778,'fgghhh','hghjh','2018-05-12');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `User_name` varchar(25) DEFAULT NULL,
  `Password` varchar(25) DEFAULT NULL,
  `Type` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`Id`,`User_name`,`Password`,`Type`) values (1,'admin','admin','examc'),(2,'staff','staff','staff'),(3,'student','student','student'),(4,'devagiri','devagiri','devagiri');

/*Table structure for table `notification` */

DROP TABLE IF EXISTS `notification`;

CREATE TABLE `notification` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `Notification` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `notification` */

insert  into `notification`(`Id`,`Date`,`Notification`) values (1,'2018-05-12','university exam'),(2,'2019-04-07','second semester exam');

/*Table structure for table `question` */

DROP TABLE IF EXISTS `question`;

CREATE TABLE `question` (
  `Qid` int(11) NOT NULL AUTO_INCREMENT,
  `Select_Exam` varchar(25) DEFAULT NULL,
  `Subject` varchar(25) DEFAULT NULL,
  `Question` varchar(25) DEFAULT NULL,
  `Answer` varchar(100) DEFAULT NULL,
  `Mark` int(11) DEFAULT NULL,
  PRIMARY KEY (`Qid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `question` */

insert  into `question`(`Qid`,`Select_Exam`,`Subject`,`Question`,`Answer`,`Mark`) values (1,'1','3','dfgg','fgghh',10);

/*Table structure for table `std_reg` */

DROP TABLE IF EXISTS `std_reg`;

CREATE TABLE `std_reg` (
  `Reg_no` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(25) DEFAULT NULL,
  `Last_Name` varchar(25) DEFAULT NULL,
  `Father_Name` varchar(25) DEFAULT NULL,
  `Dob` date DEFAULT NULL,
  `Gender` varchar(25) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `District` varchar(25) DEFAULT NULL,
  `Pincode` int(25) DEFAULT NULL,
  `State` varchar(25) DEFAULT NULL,
  `Nationality` varchar(25) DEFAULT NULL,
  `Qualification` varchar(50) DEFAULT NULL,
  `Phone_number` int(11) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `Course` varchar(25) DEFAULT NULL,
  `sem` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Reg_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `std_reg` */

insert  into `std_reg`(`Reg_no`,`First_Name`,`Last_Name`,`Father_Name`,`Dob`,`Gender`,`Address`,`District`,`Pincode`,`State`,`Nationality`,`Qualification`,`Phone_number`,`Email`,`Course`,`sem`) values (1,'anju','j','john','1995-05-30','radio2','wayanad','wayanad',345667,'kerala','indian','on',56567,'ertty','2','5');

/*Table structure for table `subject` */

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Course_id` int(11) DEFAULT NULL,
  `sem` varchar(25) DEFAULT NULL,
  `Subject` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `subject` */

insert  into `subject`(`id`,`Course_id`,`sem`,`Subject`) values (1,2,'1','Communication Skills in E'),(2,2,'1','Critical Reasoning, Writi'),(3,2,'1','Communication Skill in th'),(4,2,'1','Methodology of Humanities'),(5,2,'2','Reading Literature in Eng'),(6,2,'2','Readings on Indian Consti'),(7,2,'2','Translation and communica'),(8,2,'2','Methodology of Literature'),(9,2,'3','Literature and Contempora'),(10,2,'3','Literature in the additio'),(11,2,'3','Informatics'),(12,2,'3','Reading Prose'),(13,2,'4','History and Philosophy of'),(14,2,'4','Culture and Civilization'),(15,2,'4','Reading Poetry'),(16,2,'4','Reading Fiction'),(17,2,'5','Reading Drama'),(18,2,'5','Language and Linguistics'),(19,2,'5','Literary Criticism and Th'),(20,2,'5','Literature in English:Ame'),(21,2,'6','Womens Writing'),(22,2,'6','Modern English Literature'),(23,2,'6','Indian Writing in English'),(24,2,'6','Writing for the Media');

/*Table structure for table `write_exam` */

DROP TABLE IF EXISTS `write_exam`;

CREATE TABLE `write_exam` (
  `Qno` int(11) NOT NULL AUTO_INCREMENT,
  `Question` varchar(250) DEFAULT NULL,
  `Answer` varchar(250) DEFAULT NULL,
  `Mark` int(11) DEFAULT NULL,
  PRIMARY KEY (`Qno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `write_exam` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
