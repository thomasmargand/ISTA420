.echo on
.headers on

-- Name: chapter4lab_2.sql
-- Author: Thomas Margand 
-- Date: March 8, 2018

1. Create a report that shows all orders taken by Janet.

select o.orderid, o.employeeid from orders o where o.employeeid = 
	(select e. employeeid from employees e where e.firstname like 'Janet');
 
2. Create a report that shows all products by name that are in the Seafood category.

select p.productname as Product from products p where p.categoryid in 
	(select c.categoryid from categories c where c.categoryname like 'Seafood');
 
3. Create a report that shows all orders taken by any employee whose last name begins with “A.”

select o.orderid, o.employeeid from orders o where o.employeeid in 
	(select e. employeeid from employees e where e.lastname like 'D%');
 
4. Create a report that shows the product name and supplier id for all products supplied by Exotic
Liquids, Grandma Kelly’s Homestead, and Tokyo Traders.

select p.productname, p.supplierid from products p where p.supplierid in 
	(select s.supplierid from suppliers s where s.companyname in 
	('Exotic Liquids', "Grandma Kelly's Homestead", 'Tokyo Traders'));

5. Create a report that shows all products supplied from the Pacific Ocean region.

select p.productid, p.productname from products p where p.supplierid in 
	(select s.supplierid from suppliers s where s.country in 
	('Australia', 'Singapore', 'Japan'));
 
6. Create a report that shows all companies by name that sell products in CategoryID 8.
 
select CompanyName from Suppliers where SupplierID in 
	(select SupplierID from Products where CategoryID = 8);

7. Create a report in two parts that shows the date of the last sale made by each employee, and the date
of the first sale made by each employee.

select distinct o.orderdate, o.employeeid from orders o where o.orderdate = 
	(select max(o1.orderdate) from orders o1 where o1.employeeid = o.employeeid) 
	order by o.employeeid;
select o.orderdate, o.employeeid from orders o where o.orderdate = (
select min(o1.orderdate) from orders o1 where o1.employeeid = o.employeeid) 
	order by o.employeeid;

8. What is the product number of our most expensive product? Create a report that shows the employee
id and order id of every order for that product.

select o.orderid, o.employeeid from orders o where exists
	(select od.orderid from order_details od
	where od.productid = 38 and o.orderid = od.orderid);

9. Create a report showing the date of the last sale for every product, ordered by product id.

select p.productid, p.productname, lastdate.lastsale from products p,
	(select od.productid, od.orderid, max(o.orderdate) as lastsale
	from order_details od join orders o on od.orderid = o.orderid
	group by od.productid) lastdate
	where p.productid = lastdate.productid order by p.productid;

10. Create a report that shows all companies by name that sell products in the Seafood category.

select CompanyName 
	from Suppliers
	where SupplierID in (select SupplierID
	from Products
	where CategoryID = (select CategoryID
	from Categories
	where CategoryName = ’Seafood’));

11. Create a report that lists the ten most expensive products.

select * from
(select distinct ProductName as Ten_Most_Expensive_Products,
UnitPrice from Products
order by UnitPrice desc) as a limit 10;


12. Create a report that shows the date of the last order by all employees.

select OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate
from Orders as O1
where OrderDate = (select max(OrderDate)
from Orders as O2
where O2.EmployeeID = O1.EmployeeID);

13. Create a line item report that contains a line for each product in the order with the following columns:
the order id, the product id, the unit price, the quantity sold, the line item price, and the percent of
that line item constitutes of the total amount of the order.

select od1.orderid, od1.productid, od1.unitprice, od1.quantity,
	(od1.unitprice * od1.quantity) as LineTotal,
	round ((od1.unitprice * od1.quantity) /
	(select sum(od2.unitprice * od2.quantity) from order_details od2
	where od1.orderid = od2.orderid) * 100, 2) as OrderTotal
	from order_details od1 order by od1.orderid limit 50;

	