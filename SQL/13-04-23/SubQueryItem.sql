use productdb;

select * from item;
select * from supplier;

# Item supplied by Snehal

select * 
from item
where supid=(select supid 
             from supplier
             where firstName="Snehal");
             
 # Item supplied by  Snehal and Kunal
 
 # in when multiple values are received
 select * 
from item
where supid in (select supid 
             from supplier
             where firstName in("Snehal","Kunal"));
             
 select * 
from item
where supid>(select supid 
             from supplier
             where firstName="Snehal");     
             
 select * 
from item
where supid<(select supid 
             from supplier
             where firstName="Snehal");   
             
 
#Any All clauses

# Any : Either
#All :Every condn true

 select * 
from item
where supid >Any(select supid 
             from supplier
             where firstName in("Snehal","Kunal"));
             
  select * 
from item
where supid >All(select supid 
             from supplier
             where firstName in("Snehal","Kunal"));  
             
# update with subquery

update item 
set cost= cost+(0.2*cost)
where supid=(select supid
              from supplier
              where firstName="Snehal");

             


 
