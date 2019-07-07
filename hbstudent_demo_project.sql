select user from mysql.user;

create user 'hbstudent' @'localhost' identified by 'hbstudent';

Grant all privileges on *.* TO 'hbstudent' @'localhost'

create database if not exists hb_student_tracker;

use hb_student_tracker;

create table student(
id int not null auto_increment,
first_name varchar(45) default null,
last_name varchar(45) default null,
email varchar(45) default null,
primary key(id))
