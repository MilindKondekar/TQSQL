
#Functions

/*
CREATE DEFINER=`root`@`localhost` FUNCTION `maxofNum`(num1 int, num2 int) RETURNS int
    DETERMINISTIC
BEGIN
 if(num1>num2)
  then return num1;
  else
    return num2;
end if;
END
*/

select maxofNum(56,78);

/*
CREATE DEFINER=`root`@`localhost` FUNCTION `addNumber`(num1 int, num2 int) RETURNS int
    DETERMINISTIC
BEGIN
declare ans int;
set ans= num1+num2;
RETURN ans;
END
*/

select addNumber(56,78);

/*
CREATE DEFINER=`root`@`localhost` FUNCTION `powerOfNumber`(base int , pow int) RETURNS int
    DETERMINISTIC
BEGIN
set @ans=1;
while(pow>=1)
 do
   set @ans= @ans *base;
   set pow= pow-1;
end while;
RETURN @ans;
END
*/

select powerOfNumber(9,3);

/*
CREATE DEFINER=`root`@`localhost` FUNCTION `calc_exp`(hiredate date) RETURNS int
    DETERMINISTIC
BEGIN
declare expr int;
set expr=floor(datediff(curdate(),hiredate)/365);

RETURN expr;
END
*/

select first_name, hire_date, calc_exp(hire_date)
from employees;

/*
CREATE DEFINER=`root`@`localhost` FUNCTION `experience`(hiredate date) RETURNS int
    DETERMINISTIC
BEGIN

RETURN (year(curdate())-year(hiredate));
END
*/


select first_name, hire_date, experience(hire_date)
from employees;

select * from employees;

/*
CREATE DEFINER=`root`@`localhost` FUNCTION `votecheck`(birthdate date) RETURNS char(1) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
 set @age= year(curdate())-year(birthdate);
 if(@age>=18)
 then return 'Y';
 else
 return 'N';
 end if;

END
*/
select empid, ename, votecheck(birth_date) as 'VoteEligibility'
from employee;

select sum(salary)
from employees 
group by department_id
having department_id=90 ;

/*
CREATE DEFINER=`root`@`localhost` FUNCTION `calTotalSalaryDeptWise`(deptid int) RETURNS int
    DETERMINISTIC
BEGIN
declare totalSal int;
select sum(salary) into totalSal
from employees 
group by department_id 
having department_id=deptid;

RETURN totalSal;
END
*/

select calTotalSalaryDeptWise(90) as TotalSalary;

/*
CREATE DEFINER=`root`@`localhost` FUNCTION `calAvgSalaryDeptName`(deptName varchar(80)) RETURNS int
    DETERMINISTIC
BEGIN
declare avgSal int;
select avg(e.salary) into avgSal
from employees e join departments d 
on e.department_id= d.department_id
group by d.department_name 
having d.department_name=deptName;

RETURN avgSal;
END
*/


select avg(e.salary) 
from employees e join departments d 
on e.department_id= d.department_id
group by d.department_name 
having d.department_name="IT";

select calAvgSalaryDeptName("IT");

select calAvgSalaryDeptName("Shipping");

