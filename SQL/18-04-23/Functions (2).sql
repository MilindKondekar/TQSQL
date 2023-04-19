
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

