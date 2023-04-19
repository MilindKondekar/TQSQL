#update with join
#increase the salary of faculty by 10% who is teaching course java

update faculty f join coursefaculty cf join  course c
on f.facultyid=cf.facultyid and cf.courseid= c.courseid and c.cname="java"
set f.salary= f.salary+(0.1*f.salary);

select * from faculty;

#update salary of employees by 20% who are working in IT departmnet

use testcoursedb2;

update employees e join departments d
on e.department_id= d.department_id
set e.salary= e.salary+(0.1*e.salary)
where d.department_name="IT";

