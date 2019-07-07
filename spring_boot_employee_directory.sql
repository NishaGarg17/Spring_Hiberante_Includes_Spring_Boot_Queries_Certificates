Create database if not exists `employee_directory`;

Use `employee_directory`;

Drop table if exists `employee`;

-- table structure for table employee

Create table `employee` (
id int(11) not null auto_increment,
first_name varchar(255) default null,
last_name varchar(255) default null,
email varchar(255) default null,
primary key(id))Engine=InnoDB auto_increment=1 default charset=latin1;

-- data for table employee

insert into employee values
(1,'Nisha','Garg','nisha.garg@wolterskluwer.com'),
(2,'Manisha','Garg','manisha.garg@wolterskluwer.com'),
(3,'Rohit','Garg','rohit.garg@wolterskluwer.com'),
(4,'Komal','Garg','komal.garg@wolterskluwer.com'),
(5,'Manpreet','Kaur','manpreet.kaur@wolterskluwer.com'),
(6,'Ritika','Garg','ritika.garg@wolterskluwer.com')
;