use studentdb1;

# delete the student who has applied for the course "Go"

delete s
from student s join course c
on s.courseid= c.courseid;

drop table student;

create table student(select * from student_copy);

delete s
from student s join course c
on s.courseid= c.courseid  and c.cname="go";






