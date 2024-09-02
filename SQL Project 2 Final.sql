---SQL Project----
--1) Write a query to get all employee detail from "EmployeeDetail" table
select * from EmployeeDetail 
-------------------------------------------------------------------------------
--2) Write a query to get only "FirstName" column from "EmployeeDetail" table
select firstname from EmployeeDetail
-------------------------------------------------------------------------------
--3) Write a query to get FirstName in upper case as "First Name".
select UPPER(firstname) as 'First Name' from EmployeeDetail
-------------------------------------------------------------------------------
--4) Write a query to get FirstName in lower case as "First Name".
select LOWER(Firstname) as 'First Name' from EmployeeDetail
-------------------------------------------------------------------------------
--5) Write a query for combine FirstName and LastName and display it as "Name" 
--(also include white space between first name & last name)
select firstname, lastname, CONCAT(firstname, ' ', lastname) as 'Name' from EmployeeDetail
-------------------------------------------------------------------------------
--6) Select employee detail whose name is "Vikas
select * from EmployeeDetail where Firstname='Vikas'
-------------------------------------------------------------------------------
--7) Get all employee detail from EmployeeDetail table whose "FirstName" start with latter 'a'.
select * from EmployeeDetail where Firstname like 'a%'
-------------------------------------------------------------------------------
--8) Get all employee detail from EmployeeDetail table whose "FirstName" end with latter 'a'.
select * from EmployeeDetail where Firstname like '%a'
-------------------------------------------------------------------------------
--9. Get all employee details from EmployeeDetail table whose "FirstName" end with 'h'
select * from EmployeeDetail where Firstname like '%h'
-------------------------------------------------------------------------------
--10. Get all employee detail from EmployeeDetail table whose "FirstName" start with 
--any single character between 'a-p'
select * from EmployeeDetail where Firstname like '[a-p]%'
-------------------------------------------------------------------------------
--11)	 Get all employee detail from EmployeeDetail table whose "FirstName" not start with 
--any single character between 'a-p'
select * from EmployeeDetail where Firstname not like '[a-p]%'
-------------------------------------------------------------------------------
--12)	 Get all employee detail from EmployeeDetail table whose "Gender" end with 'le' and 
--contain 4 letters. The Underscore(_) Wildcard Character represents any single character
select * from EmployeeDetail where Gender like '__le'
-------------------------------------------------------------------------------
--13)	 Get all employee detail from EmployeeDetail table whose "FirstName" 
--start with 'A' and contain 5 letters
select * from EmployeeDetail where Firstname like '%A____'
-------------------------------------------------------------------------------
--14)	 Get all employee detail from EmployeeDetail table whose "FirstName" containing 
'%'. ex:-"Vik%as".
select * from EmployeeDetail where Firstname like '%___%__%'
-------------------------------------------------------------------------------
--15)	 Get all unique "Department" from EmployeeDetail table
select distinct department from EmployeeDetail
-------------------------------------------------------------------------------
--16)	 Get the highest "Salary" from EmployeeDetail table.
select  max(salary)  from EmployeeDetail 
-------------------------------------------------------------------------------
--17)	 Get the lowest "Salary" from EmployeeDetail table
select  min(salary) from EmployeeDetail
-------------------------------------------------------------------------------
--18)	 Show "JoiningDate" in "dd mmm yyyy" format, ex- "15 Feb 2013
select FORMAT(joiningdate, 'dd mmm yyyy') as 'FormatJoiningDate' from EmployeeDetail
-------------------------------------------------------------------------------
--19)	Show "JoiningDate" in "yyyy/mm/dd" format, ex- "2013/02/15"
select FORMAT(joiningdate, 'yyyy mmm dd') as 'FormatJoiningDate' from EmployeeDetail
-------------------------------------------------------------------------------
--20)	 Show only time part of the "JoiningDate"
select FORMAT(joiningdate, 'hh:mm:ss') as 'Time' from EmployeeDetail
-------------------------------------------------------------------------------
--21)	Get only Year part of "JoiningDate"
select YEAR (joiningdate) as 'Year of Joing'  from EmployeeDetail 
-------------------------------------------------------------------------------
--22)	Get only Month part of "JoiningDate”
select month(joiningdate) as 'Monthofjoining' from employeedetail
-------------------------------------------------------------------------------
--23)	Get system date
select GETDATE() as systemdate
-------------------------------------------------------------------------------
--24)	Get UTC date.
select GETUTCDATE() as currentutcdate
-------------------------------------------------------------------------------
--a)	Get the first name, current date,
--joiningdate and diff between current date and joining date in months.
select firstname, GETDATE() as 'currentdate',joiningdate, 
datediff(month, joiningdate, getdate()) as 'Monthdiff' from EmployeeDetail 
-------------------------------------------------------------------------------
--25)	Get the first name, current date, joiningdate and diff 
--between current date and joining date in days. 
select firstname, GETDATE() as 'currentdate',joiningdate, 
datediff(DAY, joiningdate, getdate()) as 'Daydiff' from EmployeeDetail 
-------------------------------------------------------------------------------
--26)	 Get all employee details from EmployeeDetail table whose joining year is 2013
select * from EmployeeDetail where year (joiningdate)=2013
-------------------------------------------------------------------------------
--27)	Get all employee details from EmployeeDetail table whose joining month is Jan(1)
select * from EmployeeDetail where month (joiningdate)=1
-------------------------------------------------------------------------------
--28)	Get all employee details from EmployeeDetail table whose joining month is Feb(2)
select * from EmployeeDetail where month (joiningdate)=2
-------------------------------------------------------------------------------
--29)	Get how many employee exist in "EmployeeDetail" table
select count(*) as TotalEmployee from EmployeeDetail
-------------------------------------------------------------------------------
--31. Select only one/top 1 record from "EmployeeDetail" table
select top 1 * from EmployeeDetail
-------------------------------------------------------------------------------
--32. Select all employee detail with First name "Vikas","Ashish", and "Nikhil".
select * from EmployeeDetail where Firstname in ('vikas', 'ashish', 'Nikhil')
-------------------------------------------------------------------------------
--33. Select all employee detail with First name not in "Vikas","Ashish", and "Nikhil"
select * from EmployeeDetail where Firstname not in ('vikas', 'ashish', 'Nikhil')
-------------------------------------------------------------------------------
--34. Select first name from "EmployeeDetail" table after removing white spaces 
--from right side
select RTRIM(Firstname) as removewhitespace from EmployeeDetail 
-------------------------------------------------------------------------------
--35. Select first name from "EmployeeDetail" table after removing white spaces from left side
select LTRIM(Firstname) as LFirstname from EmployeeDetail
-------------------------------------------------------------------------------
--36. Display first name and Gender as M/F.(if male then M, if Female then F)
select firstname, case when gender = 'Male' then 'M' when gender = 'Female' then 'F' else 'unkown'
end as gender from EmployeeDetail
-------------------------------------------------------------------------------
--37. Select first name from "EmployeeDetail" table prifixed with "Hello
select CONCAT('Hello',' ', Firstname) as Greeting from EmployeeDetail
-------------------------------------------------------------------------------
--38. Get employee details from "EmployeeDetail" table whose Salary greater than 600000
select * from EmployeeDetail where salary >600000
-------------------------------------------------------------------------------
--39. Get employee details from "EmployeeDetail" table whose Salary less than 700000
select * from EmployeeDetail where salary <700000
-------------------------------------------------------------------------------
--40. Get employee details from "EmployeeDetail" table whose Salary between 500000 than 600000
select * from EmployeeDetail where salary between 500000 and 600000
-------------------------------------------------------------------------------
--41. Give records of ProjectDetail table
create table Projectdetail(Projectdetailid int primary key, employeedetailid int, projectname varchar(max))
select * from Projectdetail
insert into Projectdetail values ( 1, 1, 'Task Track'),
(2, 1,'CLP'),(3,1,'Survey Management'),(4,2,'HR Management'),
(5,3,'Task Track'), (6,3,'GRS'),(7,3,'DDS'), (8,4,'HR Management'),
(9,6,'GL Management')
-------------------------------------------------------------------------------
--42. Write the query to get the department and department 
--wise total(sum) salary from "EmployeeDetail" table.
select * from EmployeeDetail
select department, SUM(Salary) as 'Total Salary' from EmployeeDetail group by Department
-------------------------------------------------------------------------------
--43. Write the query to get the department and department wise total(sum) salary, 
display it in ascending order according to salary.
select department, SUM(Salary) as 'Total Salary' from EmployeeDetail group by Department order by [Total Salary]asc
-------------------------------------------------------------------------------
--44. Write the query to get the department and department wise total(sum) salary,
--display it in descending order according to salary
select department, SUM(Salary) as 'Total Salary' from EmployeeDetail group by Department order by [Total Salary]desc
-------------------------------------------------------------------------------
--45. Write the query to get the department, total no. of departments, total(sum) salary
--with respect to department from "EmployeeDetail" table.
select department, COUNT(distinct department) as 'Totalno.ofdepartment', 
SUM(salary) as 'TotalSalary' from EmployeeDetail group by Department
-------------------------------------------------------------------------------
--46. Get department wise average salary from "EmployeeDetail" table order 
--by salary ascending.
select Department, AVG(salary) as 'Avgsalary' from EmployeeDetail group by department
order by [Avgsalary]asc 
-------------------------------------------------------------------------------
--47 . Get department wise maximum salary from "EmployeeDetail" table order
--by salary ascending
select Department, max(salary) as 'Maxsalary' from EmployeeDetail group by department
order by [Maxsalary]asc 
-------------------------------------------------------------------------------
--48.Get department wise minimum salary from "EmployeeDetail" table order by salary ascending.
select Department, min(salary) as 'Minsalary' from EmployeeDetail group by department
order by [Minsalary]asc 
-------------------------------------------------------------------------------
--49. Get department wise minimum salary from "EmployeeDetail" table order 
--by salary ascending
select Department, min(salary) as 'Minsalary' from EmployeeDetail group by department
order by [Minsalary]asc 
-------------------------------------------------------------------------------
--50. Join both the table that is Employee and ProjectDetail based on some common paramter
select * from EmployeeDetail join Projectdetail
on EmployeeDetail.Employeeid=Projectdetail.employeedetailid
-------------------------------------------------------------------------------
--51. Get employee name, project name order by firstname from "EmployeeDetail" and
--"ProjectDetail" for those employee which have assigned project already.
select EmployeeDetail.Firstname, EmployeeDetail.Lastname, Projectdetail.projectname from EmployeeDetail left join Projectdetail
on EmployeeDetail.Employeeid=Projectdetail.employeedetailid
order by EmployeeDetail.Firstname
-------------------------------------------------------------------------------
--52. Get employee name, project name order by firstname from "EmployeeDetail" 
--and "ProjectDetail" for all employee even they have not assigned project.
select EmployeeDetail.Firstname, EmployeeDetail.Lastname, Projectdetail.projectname from EmployeeDetail left join Projectdetail
on EmployeeDetail.Employeeid=Projectdetail.employeedetailid where projectdetail.projectname is null
order by EmployeeDetail.Firstname 
-------------------------------------------------------------------------------
--53) Get employee name, project name order by firstname from "EmployeeDetail" and
--"ProjectDetail" for all employee if project is not assigned then display "
---No Project Assigned"
select EmployeeDetail.Firstname, EmployeeDetail.Lastname, coalesce(Projectdetail.projectname,'No Project Assigned') as 'Project Name'  from EmployeeDetail left join Projectdetail
on EmployeeDetail.Employeeid=Projectdetail.employeedetailid where projectdetail.projectname is null
order by EmployeeDetail.Firstname 
-------------------------------------------------------------------------------
--54.Get all project name even they have not matching any employeeid, 
--in left table, order by firstname from "EmployeeDetail" and "ProjectDetail
SELECT 
    COALESCE(EmployeeDetail.Firstname, 'No Employee Assigned') AS EmployeeName,
    Projectdetail.projectname
FROM 
    ProjectDetail 
LEFT JOIN 
    EmployeeDetail  ON EmployeeDetail.Employeeid=Projectdetail.employeedetailid
ORDER BY 
    EmployeeDetail.Firstname
-------------------------------------------------------------------------------
--55. Get complete record (employeename, project name) from both tables 
--([EmployeeDetail],[ProjectDetail]), if no match found in any table then show NULL
select EmployeeDetail.Firstname, EmployeeDetail.Lastname, Projectdetail.projectname
from EmployeeDetail Full join Projectdetail
ON EmployeeDetail.Employeeid=Projectdetail.employeedetailid
-------------------------------------------------------------------------------
--57.Get complete record (employeename, project name) from both tables 
--([EmployeeDetail],[ProjectDetail]), if no match found in any table then show NULL
select EmployeeDetail.Firstname, EmployeeDetail.Lastname, Projectdetail.projectname
from EmployeeDetail full join Projectdetail
ON EmployeeDetail.Employeeid=Projectdetail.employeedetailid
-------------------------------------------------------------------------------
--58.Write down the query to fetch EmployeeName & Project who has 
--assign more than one project
WITH EmployeeProjectCounts AS (
    SELECT 
        employeedetailid,
        COUNT(ProjectName) AS ProjectCount
    FROM 
        ProjectDetail
    GROUP BY 
        employeedetailid
    HAVING 
        COUNT(ProjectName) > 1
)
-------------------------------------------------------------------------------
--59. Write down the query to fetch ProjectName on which more than 
--one employee are working along with EmployeeName.
WITH ProjectEmployeeCounts AS (
    SELECT 
        ProjectName,
        COUNT(DISTINCT employeedetailid) AS EmployeeCount
    FROM 
        ProjectDetail
    GROUP BY 
        ProjectName
    HAVING 
        COUNT(DISTINCT employeedetailid) > 1
)
SELECT 
    pe.ProjectName,
    ed.Firstname AS EmployeeName
FROM 
    ProjectEmployeeCounts pe
JOIN 
    ProjectDetail pd ON pe.ProjectName = pd.ProjectName
JOIN 
    EmployeeDetail ed ON ed.Employeeid=pd.employeedetailid
ORDER BY 
    pe.ProjectName, ed.Firstname;
	------------------------------------------------------------
--60. Apply Cross Join in Both the tables
select * from EmployeeDetail cross join Projectdetail order by projectname
	------------------------------------------------------------
