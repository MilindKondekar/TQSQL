
use productdb;

create table supplier(
supid int,
firstName varchar(50) not null,
lastName varchar(50),
phoneNumber bigint not null,
email varchar(100)
);

# Make supplier id as primary key

alter table supplier 
modify supid int primary key;

create table item(
itemid int primary key,
itemName varchar(50) not null,
cost float,
supid int,
foreign key (supid) references supplier(supid));

desc item;
desc supplier;

select * from supplier;

insert into item
values(1,"Pendrive",670.0, 102);

insert into item
values(2,"HardDisk",950, 104);

insert into item
values
(3,"WebCamera",5000,103),
(4,"WebCamera",6700,104),
(5,"HeadPhones",540,101);

select * from item;

#Not allowed
insert into item
values(9,"CD",250, 107);

# Foreign Key Options

# Restrict : By default > Dosenot allow us to delete a primary key row from parent table if that key is acting as foreign key in child table

delete from supplier
where supid=102;

delete from supplier
where supid=107;

# Cascade: It is used when we delete or update any row from the parent table, 
#the values of the matching rows in the child table will be deleted or updated automatically.
# propagated

delete from supplier
where supid=102;

#NO Action:It is similar to RESTRICT.
# But it has one difference that it checks referential integrity after trying to modify the table.

#Set Null

#Delete foreign key
alter table item
drop foreign key item_ibfk_1;

# add foreign key 

alter table item 
add constraint fk_supplier
foreign key (supid) references supplier(supid)
on delete set null
on update set null;

delete from supplier
where supid=101;



