Create Database if not exists `employee_directory`;
USE `employee_directory`;

--
-- Table structure for table `employee`
--
Drop table if exists `employee`;

Create table `employee`(
`id` int(11) not null auto_increment,
`first_name` varchar(45) default null,
`last_name` varchar(45) default null,
`email` varchar(45) default null,
 Primary key(id))ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

--
-- Data for table `employee`
--

INSERT INTO `employee` VALUES 
	(1,'Leslie','Andrews','leslie@luv2code.com'),
	(2,'Emma','Baumgarten','emma@luv2code.com'),
	(3,'Avani','Gupta','avani@luv2code.com'),
	(4,'Yuri','Petrov','yuri@luv2code.com'),
	(5,'Juan','Vega','juan@luv2code.com');