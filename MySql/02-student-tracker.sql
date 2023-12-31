CREATE DATABASE  IF NOT EXISTS `hb_student_tracker`;
USE `hb_student_tracker`;

--
-- Table structure for table `student`
--
DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
PRIMARY  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


SELECT * FROM student;

ALTER TABLE hb_student_tracker.student AUTO_INCREMENT=3000;

TRUNCATE hb_student_tracker.student;
