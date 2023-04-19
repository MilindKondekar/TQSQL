
#Write a query to display first day of the month

select subdate(adddate(curdate() ,interval 1 day), interval day(curdate()) day);

select day(curdate());
select adddate(curdate() ,interval 1 day);

#Write a query to display last day of the month

select subdate(adddate(curdate() ,interval 1 month), interval day(curdate()) day);

select subdate(adddate("2024-02-13",interval 1 month), interval day("2024-02-13") day);

#Write a query to get the first day of the current year.

#makeDate(year, day of year)

select extract(year from curdate());

select makedate(extract(year from curdate()),1);

#fromDays : Make date from number of days

select from_days(729910);

#Calculate age form birthdate

use payroll;

select ename, birth_date, datediff(curdate(),birth_date)/365  as Age
from employee;

select ename, birth_date, floor(datediff(curdate(),birth_date)/365)   as Age
from employee;

select ename, birth_date, date_format(from_days(datediff(curdate(),birth_date)),"%y")  as Age
from employee;


#Show the employee names who have been hired in june



#Write a query to get the years in which more than 2 employees joined.



#Write a query to get first name of employees who joined in 1986.



#Write a query to get department name, manager name, and salary of the manager for all managers whose experience is more than 5 years.


 #Write a query to get employee ID, last name, and date of first salary of the employees.
 
 
  #Write a query to get first name, hire date and experience of the employees.
