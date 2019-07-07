Drop database if exists `spring_security_demo_bcrypt_password`;

Create database if not exists `spring_security_demo_bcrypt_password`;

use `spring_security_demo_bcrypt_password`;

/*Table structure for table users*/
Drop table if exists `users`;
Create table `users` (
	`username` varchar(50) not null,
	`password` varchar(68) not null,
	`enabled` tinyInt(1) not null,
	PRIMARY KEY(`username`)	
)ENGINE=InnoDB Default charset=latin1;

/*Inserting data for table users*/

--
-- Dumping data for table `users`
--
-- NOTE: The passwords are encrypted using BCrypt
--
-- A generation tool is available at: http://www.luv2code.com/generate-bcrypt-password
--
-- Default passwords here are: fun123
--

INSERT INTO `users` 
VALUES 
('john','{bcrypt}$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K',1),
('mary','{bcrypt}$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K',1),
('susan','{bcrypt}$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K',1);

/*Table structure for table authorities*/

Drop table if exists `authorities`;

Create table `authorities`(
	`username` varchar(50) not null,
    `authority` varchar(50) not null,
    UNIQUE KEY `authorities_idx_1`(`username`,`authority`),
    constraint `authorities_ibfk_1` foreign key(`username`) references `users`(`username`)
)ENGINE=InnoDB Default charset=latin1;

/*Inserting data for table authorities*/
Insert into `authorities` 
values('John','ROLE_EMPLOYEE'),
('Mary','ROLE_EMPLOYEE'),
('Mary','ROLE_MANAGER'),
('Susan','ROLE_EMPLOYEE'),
('Susan','ROLE_ADMIN');