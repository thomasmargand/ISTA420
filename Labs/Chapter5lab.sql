.echo on
.headers on
 
--Name: chapter5lab.sql
--Author: Thomas Margand 
--Date: March 22, 2018

1. List the number of orders by each customer who lives in the United States 
using a CTE. Sort from highest to lowest.

select customer id from customers where country like 'USA';
with USAcust as
    (select customerid from customers where country like 'USA')
select customerid, count(orderid) from orders 
	where customerid in USAcust 
	group by customerid order by count(orderid) desc;

2. List the product name and the number of each product from a German supplier 
sold to a customer in Germany using a CTE. Sort from highest to lowest.

with GERprod as (select s.supplierid, s.country, p.supplierid, p.productid as pid,
	p.productname from suppliers s join products p on s.supplierid = p.supplierid
	where s.country like 'Germany'),
GERord as (select d.productid as pid, d.quantity, d.orderid, o.orderid, o.shipcountry
	from orders o join order_details d on o.orderid = d.orderid
	where o.shipcountry like 'Germany')
	select distinct gp.productname, sum(go.quantity) as TotalSold from GERprod gp join
GERord go
	on gp.pid = go.pid group by gp.productname order by TotalSold desc;

3. Prepare an employee report showing the name of each employee, the number of 
employees they supervise, and the name of their supervisor using a CTE. Sort by
the number of employees supervised.

with EmployeeSubordinatesReport (EmployeeID, LastName, FirstName, NumberOfSubordinates,
ReportsTo) as
(select
EmployeeID, LastName, FirstName, (select count(1) from Employees e2
where e2.ReportsTo = e.EmployeeID) as NumberOfSubordinates, ReportsTo
from Employees e)
select Employee.LastName, Employee.FirstName, Employee.NumberOfSubordinates,
Manager.LastName as ManagerLastName, Manager.FirstName as ManagerFirstName
from EmployeeSubordinatesReport Employee
left join EmployeeSubordinatesReport Manager on
Employee.ReportsTo = Manager.EmployeeID order by Employee.NumberOfSubordinates desc;

4. One purpose of views is to denormalize databases for the purpose of efficiency, both machine efficiency
and programmer efficiency. Creating denormalized objects can turn complex queries into simple ones.
For example, suppose you needed a list of all employees who took orders for a specific customer, or all
customers who were served by a specific employee. You can create a "table" as a view that contains
distinct pairs of customers and employees. This is somewhat complex, so do this in steps.
(a) Create a query that returns every distinct customer/employee pair.
(b) Use that query to write another query turning the customerid, customername, and customercon-
tact, and the employeeid, firstname, and lastname.
(c) Make sure you drop any view that might exist.
(d) Create a view based on your query.
(e) Write a report listing all customers served by employee 7, Robert King.
(f) Write a report listing all employees who served customer CHOPS, Chop-suey Chinese.
(g) Drop the view.

drop view if exists CustEmpPairs;
create view CustEmpPairs as
	with CustEmpPairs (cid, eid) as (select distinct customerid, employeeid from orders)
select c.customerid, c.companyname, c.contactname, e.employeeid, e.firstname, 
e.lastname
	from customers c, employees e, CustEmpPairs o
	where o.eid = e.employeeid and o.cid = c.customerid;
select * from CustEmpPairs where employeeid = 7;
select * from CustEmpPairs where customerid like ’CHOPS’;
drop view if exists CustEmpPairs;