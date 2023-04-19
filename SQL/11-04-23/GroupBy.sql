#Group by clause

# aggregate function

select * from student;
# total student in each course

select courseid, count(*) as TotalStudents
from student
group by courseid;

select courseid, count(*) as TotalStudents
from student
group by courseid
having TotalStudents>1;

select * from course;

select duration, count(courseid) as TotalCourse
from course
group by duration;

select * from student;

# write column name it doesnot count null values
select courseid, count(courseid) as TotalStudents
from student
group by courseid;

select courseid, count(stid) as TotalStudents
from student
group by courseid;

select courseid, count(stid) as TotalStudents
from student
group by courseid
order by TotalStudents desc;

select * from student;

select courseid, count(*) as TotalStudents
from student
where feestatus="Paid"
group by courseid
order by TotalStudents desc;