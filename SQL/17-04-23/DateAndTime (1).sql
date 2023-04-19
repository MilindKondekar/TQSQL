
select curdate(); # yyyy-MM-dd

select now(); # yyyy-MM-dd hh:mm:ss

#adddate

select adddate(curdate(), interval 10 day);

select adddate(curdate(), interval 1 month);

# select month from date

select month(curdate());

select monthname(curdate());

select dayofmonth(curdate());

select dayname(curdate());

select dayofweek(curdate());

select dayofyear(curdate());

select hour(now());

select time(addtime(now(),"1:00:00"));

select current_time();

#subtract date

select subdate(curdate(), interval 1 month);

select date_sub(curdate(), interval 1 month);

#date diff : returns the number of days

select datediff(curdate(),"2023-03-21");

use testcoursedb2;

# show the first_name, id and experience of the employee in the company

select * from employees;

select employee_id,first_name , datediff(curdate(),hire_date)/365 as experience
from employees;

# Date Format

select date_format(curdate(),"%d-%m-%y");

select date_format(curdate(),"%d-%M-%y");

select date_format(curdate(),"%D %M %Y");

select date_format(curdate(),"%W %D %M %Y");


 

