
use studentdb1;
select * from student;

# Show the names and feestatus of student in course java
select sname, feestatus
from student
where courseid=(select courseid
                 from course
                 where cname="java");
                 
                 
# Show the names and feestatus of student in course .net and halfpaid

select sname, feestatus
from student
where courseid=(select courseid
                 from course
                 where cname=".net") and feestatus='HalfPaid';
                 
             
# Show student whose faculty name is raksha

select * 
from student
where courseid in (select courseid
                from coursefaculty
                where facultyid=(select facultyid
                                 from faculty
                                 where fname="Raksha"));


 # student details whose coursename is python
 select * from student
 where courseid=(select courseid
                from course 
                where cname="python");
 
 # student details whose course duration is 4 
 
 select * from student
 where courseid in (select courseid
                   from course
                   where duration=4);
 
# Show the course who faculty salary is greater than 60000
select cname
from course
where courseid in (select courseid
                   from coursefaculty
                   where facultyid in( select facultyid
                                        from faculty
                                        where salary> 60000));
  # show the course where number of student enrolled is greater than 3
  
  select courseid, count(*) as TotalStudent
  from student
  group by courseid
   having TotalStudent>=3;
   
   # Exists
   select * from course
  where exists(  select courseid, count(*) as TotalStudent
                 from student
                 where course.courseid= student.courseid
                 group by courseid
                  having TotalStudent>=3);
   
   
  
  # show the names of have faculty whose salary is greater than than salary of Shuruti 
  select fname
  from faculty 
  where salary > (select salary
                      from faculty
                      where fname="Shuruti");
                     
  
   # Show the names whose experience is greater than jayshree  
   select fname
   from faculty
   where experience>(select experience
                     from faculty
                     where fname="Jayshree");
                     
   
   
   # # show facutly name whose salary is greater than average salary  
   
   select avg(salary)
   from faculty;
   
   select fname
   from faculty
   where salary>( select avg(salary)
                  from faculty
                   );
   
   # we cannot self related using subquery
    # update the salary of faculty whose salary is greate than average salary
    update faculty
    set salary= salary+1000
    where salary>(select avg(salary)
                   from faculty 
                   );
    
    
     # update the salary of faculty whose are teaching more than one course  
     
      select facultyid, count(*) as totalcourse
      from coursefaculty
       group by facultyId
     having totalcourse >1;
     
     update faculty
      set salary= salary+1000
      where exists(select facultyid, count(*) as totalcourse
                     from coursefaculty
                     where faculty.facultyid= coursefaculty.facultyid
                     group by facultyId
					having totalcourse >1);
                  
     
     
     # show the faculty details who are teaching more than one course
     
     select *
     from faculty
     where  exists (select facultyid, count(*) as totalcourse
			from coursefaculty
             where faculty.facultyid= coursefaculty.facultyid
              group by facultyId
              having totalcourse >1);

