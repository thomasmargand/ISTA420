.echo on
.headers on

--Name: Lab3.sql
--Author: Thomas Margand	
--Date: February 28, 2018

1. What is the order number and the date of each order sold by each employee?

select e.employeeid, e.firstname, e.lastname, o.orderid, o.orderdate from employees e join
	orders o on e.employeeid = o.employeeid;
select e.employeeid, e.firstname, e.lastname, o.orderid, o.orderdate from employees e,
	orders o where e.employeeid = o.employeeid;

2. List each territory by region.

select r.regiondescription, t.territorydescription from territories t join region r on 
	r.regionid = t.regionid;
select r.regiondescription, t.territorydescription from territories t, region r where 
	r.regionid = t.regionid;

3. What is the supplier name for each product alphabetically by supplier?

select p.productname, s.companyname from products p join suppliers s on s.supplierid = 
	p.supplierid order by s.companyname;
select p.productname, s.companyname from products p, suppliers s where s.supplierid = 
	p.supplierid order by s.companyname;

4. For every order on May 5, 1998, how many of each item was ordered, and what was the price of the
item?

select o.orderdate, o.orderid, d.productid, d.quantity, d.unitprice from order_details d
	join orders o on o.orderid = d.orderid where o.orderdate = ’1998−05−05’;
select o.orderdate, o.orderid, d.productid, d.quantity , d.unitprice from order_details d,
	orders o where o.orderid = d.orderid and o.orderdate = ’1998−05−05’;

5. For every order on May 5, 1998, how many of each item was ordered giving the name of the item, and
what was the price of the item?

select o.orderdate, o.orderid, p.productname, d.quantity, d.unitprice from order_details d
	join orders o on o.orderid = d.orderid join products p on p.productid = d.productid
	where o.orderdate = ’1998−05−05’;
select o.orderdate, o.orderid, p.productname, d.quantity, d.unitprice from order_details d,
	orders o , products p where o.orderid = d.orderid and p.productid = d.productid and 
	o.orderdate = ’1998−05−05’;

6. For every order in May, 1998, what was the customer’s name and the shipper’s name?

select o.orderid, o.orderdate, c.companyname, s.companyname from orders o join customers c
	on o.customerid = c.customerid join shippers s on s.shipperid = o.shipperid where 
	o.orderdate like ’1998−01%’;
select o.orderid, o.orderdate, c.companyname, s.companyname from orders o, customers c,
	shippers s where o.customerid = c.customerid and s.shipperid = o.shipperid and 
	o.orderdate like ’1998−01%’;

7. What is the customer’s name and the employee’s name for every order shipped to France?

select o.orderid , c.companyname , e.firstname, e.lastname, o.ship country from orders o join
	customers c on o.customerid = c.customerid join employees e on o.employeeid = 
	e.employeeid where o.ship country = ’France’;
select o.orderid, c.companyname, e.firstname, e.lastname , o.ship country from orders o,
	customers c , employees e where o.customerid = c.customerid and o.employeeid = 
	e.employeeid and o.shipcountry = ’France’;

8. List the products by name that were shipped to Germany.

select distinct p.productname, o.shipcountry from orders o join order_details d on o.orderid = 
	d.orderid join products p on d.productid = p.productid where o.shipcountry = 
	’Germany’;
select distinct p.productname, o.shipcountry from products p, orders o, orderdetails d
	where o.orderid = d.orderid and d.productid = p.productid and o.shipcountry = ’Germany’;