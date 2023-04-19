create database studentdb2;

drop database studentdb2;

use studentdb1;

show databases;


create table course(
courseid  int primary key,
cname varchar(30) not null,
duration varchar(30),
fees int );

describe course;

desc faculty;

drop table demo; 

