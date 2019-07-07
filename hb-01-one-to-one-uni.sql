Drop Schema if exists `hb-01-one-to-one-uni`;

Create schema `hb-01-one-to-one-uni`;

use `hb-01-one-to-one-uni`;

set foreign_key_checks = 0;

Drop table if exists `instructor_detail`;

Create table instructor_detail(
	id int(11) not null auto_increment,
    youtube_channel varchar(128) default null,
    hobby varchar(45) default null,
    primary key(id)
)
;

Drop table if exists instructor;


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

set foreign_key_checks = 1;