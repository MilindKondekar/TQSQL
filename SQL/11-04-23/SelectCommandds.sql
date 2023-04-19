#Select commands

select * from student;

#add the column the joining date
alter table student
add column joining_date date;

# increasing order of joinind date

select * from student
order by joining_date;

select * from student
order by joining_date desc;

# show the students in ascending order of course and if the course is same then descending order of joining date

select * from student
order by courseid asc, joining_date desc;

# show the student in course 103 and 104
select * from student 
where courseid in(103,104);

select * from student
where courseid=103 or courseid=104;

select * from student 
where courseid not in(103,104);

# between 

select * from faculty;

select fname 
from faculty
where salary between 30000 and 50000;

select fname 
from faculty
where salary not between 30000 and 50000;

#limit

select * from faculty
order by salary desc;

# show the three highest salaries
select * from faculty
order by salary desc limit 3;

#like

select * from student;
# start with s

select * from student 
where sname like 's%';

#end with a

select * from student
where sname like '%a';

# starts with s and has 7 characters
select * from student 
where sname like 's______%'; # 6 underscore

select * from student 
where sname like 'v%v';

#aggregate function : sum,count, min, max, avg

select count(*)
from student 
where courseid=103;

# Alias
select count(*) as TotalStudent
from student 
where courseid=103;

select sum(salary) as TotalSalary
from faculty;

select avg(salary) as AverageSalary
from faculty;

select max(salary) as MaxSalary
from faculty;

select min(salary) as MinimumSalary
from faculty;

select sum(salary) as TotalSalary
from faculty
where exp>10;
















