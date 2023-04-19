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
             
 
