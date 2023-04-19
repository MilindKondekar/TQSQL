create database books;
use books;
create table Author(authorId int primary key, authorname varchar(20), phoneNo bigint,  email varchar(20),
 address varchar(20), city varchar(20));
 
 create table Awards( awardtype_id int primary key, awardname varchar(20), awardprice float);
 
 create table Book( bookid int primary key, bookname varchar(20), authorId int, price int, 
 foreign key(authorid) references Author(authorId));
 
 create table AuthorAward( awardId int, awardtype_id int, authorid int,bookid int, year date,
 foreign key(awardtype_id) references Awards(awardtype_id), 
 foreign key( authorid) references Author(authorId),
 foreign key(bookid) references  Book(bookid));

#DDL Queries
# 1. Change the name of the table AuthorAward to Author_Award;
# 2. Alter table Book change the bookname datatype to varchar 50;
# 3. 
