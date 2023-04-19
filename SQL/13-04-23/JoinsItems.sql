use productdb;
# join= inner join
select * 
from item i join supplier s
on i.supid= s.supid;


select * 
from item i join supplier
using(supid);

#equijoin
select * 
from item i join supplier s
where i.supid= s.supid;

select * 
from item i natural join supplier s;

select * 
from item i cross join supplier s
where i.supid= s.supid;

#Nonqeui Join
select * 
from item i join supplier s
where i.supid<s.supid;

#LeftOuterJoin
select * 
from item i left join supplier s
on i.supid= s.supid;

#Right Join
select * 
from item i right join supplier s
on i.supid= s.supid;




