.headers on
.echo on 

--Name: chapter9lab.sql
--Author: Thomas Margand 
--Date: April 8, 2018

Exercise 1-1

Create Table dbo.Departments
(
dept id     INT                          Not Null
	constraint PK_Departments Primary Key,
deptname VARCHAR(25)                     Not Null,
mgrid INT                                Not Null,
validfrom DateTime2(0)
	Generated Always As Row Start Hidden Not Null,
validto DateTime2(0)
	Generated Always As Row End   Hidden Not Null,
Period For System_Time (validfrom, validto)
)
With (System_Versioning = On (History_Table = dbo.DepartmentsHistory));

Exercise 2-1

Select Cast(SYSUTCDATETIME() As DateTime2(0)) As P1;
Insert Into dbo.Departments(deptid, deptname, mgrid)
	Values(1, 'HR'       , 7),
	      (2, 'IT'       , 5),
		  (3, 'Sales'    , 11),
		  (4, 'Marketing', 13);
		  
Exercise 2-2

Select Cast(SYSUTCDATETIME() As DateTime2(0)) As P2;
Begin Tran;
Update dbo.Departments
	Set deptname = "Sales and Marketing"
	Where deptid = 3;
Delete From dbo.Departments	
Where deptid = 4;
Commit Tran;

Exercise 2-3 

Select Cast(SYSUTCDATETIME() As DateTime2(0)) As P3;
Update dbo.Departments
	Set mgrid = 13
	Where deptid = 3;
	
Exercise 3-1

Select * From dbo.Departments;

Exercise 3-2

Select * From dbo.Departments 
	For System_Time As Of '2018-04-09 10:29:00';
		  
Exercise 3-3

Select deptid, deptname, mgrid, validfrom, validto
From dbo.Departments
	For System_Time Between '2018-04-09 10:28:27'
				        And '2018-04-09 10:30:40';
						
Exercise 4

Alter Table dbo.Departments Set (System_Versioning = OFF);
Drop Table dbo.DepartmentsHistory, dbo.Departments;