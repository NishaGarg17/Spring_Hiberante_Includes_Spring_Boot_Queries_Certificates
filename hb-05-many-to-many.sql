Drop schema if exists `hb-05-many-to-many`;

create schema `hb-05-many-to-many`;

use `hb-05-many-to-many`;

set foreign_key_checks = 0;

Drop table if exists `instructor_detail`;

create table `instructor_detail` (
`id` int not null auto_increment,
`youtube_channel` varchar(128) default null,
`hobby`  varchar(45) default null,
primary key(id));

Drop table if exists `instructor`;

Create table instructor(
	id int(11) not null auto_increment,
    first_name varchar(45) default null,
	last_name varchar(45) default null,
    email varchar(45) default null,
    instructor_detail_id int(11) default null,
    primary key(id),
    CONSTRAINT FK_Detail FOREIGN KEY (instructor_detail_id)
    REFERENCES instructor_detail(id)
    on delete no action on update no action
);

Drop table if exists `course`;

create table `course` (
`id` int(11) not null auto_increment,
`title` varchar(128) default null,
`instructor_id` int(11) default null,
primary key (`id`),
unique key `Title_Unique` (`title`),
key `FK_Instructor_idx` (`instructor_id`),
constraint `FK_Instructor`
foreign key (`instructor_id`) references `instructor` (`id`));

#alter table instructor_detail add column `hobby`  varchar(45) default null;

Drop table if exists `review`;
Create table `review` (
id int(11) not null auto_increment,
comment varchar(256) default null,
course_id int (11) default null,
primary key (id),
Key `FK_COURSE_ID_idx` (`course_id`),
constraint `FK_COURSE`
Foreign key (`course_id`) references course(id));

Drop table if exists `student`;
Create table `student` (
id int(11) not null auto_increment,
first_name varchar(45) default null,
last_name varchar(45) default null,
email varchar(45) default null,
Primary key(id));

Drop table if exists `course_student`;

Create table `course_student` (
course_id int(11) not null,
student_id int(11) not null,

primary key(course_id,student_id),
Key `FK_STUDENT_idx` (student_id),
Constraint `FK_Course_05` foreign key(`course_id`)
references `course` (`id`)
on delete no action on update no action,

Constraint `FK_Student` foreign key(`student_id`)
references `student` (`id`)
on delete no action on update no action
);

set foreign_key_checks =1;