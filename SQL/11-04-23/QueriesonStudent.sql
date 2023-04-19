#Q1. Show all the student whose course id is either 103,102;

select * from student
where courseid in(103,104);

#Q2. Show student name whose name starts with s
select * from student 
where sname like 's%';

#Q3. Show all the faculty whose email id is not null

select * from faculty
where email is not null;

#Q4. Show the number of student in each course
select courseid, count(*) as TotalStudents
from student
group by courseid;


#Q5. Show the numbers of courses according to duration

select duration, count(courseid) as TotalCourse
from course
group by duration;

#Q6. Increase the fees of all courses by 10%

update course
set fees=fees+(0.1*fees);

#Q7. Increase the salary of faculty by 20% whose experience is greater than 5 years

update course
set fees=fees+(0.2*fees)
where exp>5;


#Q8. Delete the course communication

delete from course
where cname like 'communication';

#Q9. Delete the students who has not paid the fees

delete from student 
where feestatus like 'UnPaid';

#Q10.Show the faculty in desc order of salary 

select * from faculty
order by salary desc;

#Q11. Show the student in asc order of course id and if the course is same then desc order of joining date
#q12. Show the total student in each course in asc order
select courseid, count(*) as TotalStudents
from student
group by courseid
order by TotalStudent desc;

#q13. Add the column joining date in faculty
alter table student 
add column joining_date date;

#q14. Change the column to exp of experience

alter table faculty
rename column exp to experience;






