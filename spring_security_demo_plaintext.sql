Drop database if exists `spring_security_demo_plaintext`;

Create database if not exists `spring_security_demo_plaintext`;

use `spring_security_demo_plaintext`;

/*Table structure for table users*/
Drop table if exists `users`;
Create table `users` (
	`username` varchar(50) not null,
	`password` varchar(50) not null,
	`enabled` tinyInt(1) not null,
	PRIMARY KEY(`username`)	
)ENGINE=InnoDB Default charset=latin1;

/*Inserting data for table users*/

Insert into `users` values
('John','{noop}test123',1),
('Mary','{noop}test123',1),
('Susan','{noop}test123',1);

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