# String functions

select length("hello") as Length;

select concat("Pratik","Tilekar");

select concat("Pratik"," ","Tilekar") as FullName;

#check index

select instr("Java","a");

# substring: (startindex, length)

select substr("Programming", 3, 5);

select substr("Programming", -3, 5);


select length("java") from dual;

select ascii('a');

select length(concat("Good", "Morning"));

select upper("java");
select lower("JAva");

select repeat("Hello ",5);

select reverse("Hello");

select replace("Java",'a','b');

use testcoursedb2;

select * from employees;

# add @ gmail.com to all the email

update employees
set email= concat(email,"@gmail.com");

alter table employees
add column gender varchar(7)
after Last_name;

# Add title acc to gender

select if(gender like "M",concat("Mr.", first_name),concat("Mrs.",first_name)) as FirstName
from employees;

select concat(if(gender like "M",concat("Mr.", first_name),concat("Mrs.",first_name))," ",last_name) as FullName
from employees;

select * from employees;

update employees 
set first_name = upper(first_name);

# Title case
select concat(upper(substr(first_name,1,1)),lower(substr(first_name,2,length(first_name)))) as TitleName
from employees;

use studentdb1;

# replace

select * from faculty;

alter table faculty
add column lname varchar(50)
after fname;

update faculty
set lname= replace(lname, "Gupta","Aggarwal");

# group concat

# All the employees working in a deptid

use testcoursedb2;

select DEPARTMENT_ID, group_concat(FIRST_NAME," ") as EmployeeNames
from employees
group by DEPARTMENT_ID;

select DEPARTMENT_ID, group_concat(EMPLOYEE_ID," ") as EmployeeId
from employees
group by DEPARTMENT_ID;

select strcmp("Java","Python");

select strcmp("Java","Java");

#find in set

select find_in_set("Java","Java,HTML,Python");

select find_in_set("html","Java,HTML,Python");

select find_in_set("Go","Java,HTML,Python");





