.echo on
.headers on

--Name: Lab2B.sql
--Author: Thomas Margand	
--Date: February 28, 2018

1. Who are our customers in North America?

select customerid, companyname, country from customers 
  where country in ('USA','Canada','Mexico');

2. What orders were placed in April, 1998?
  
select orderID, CustomerID, OrderDate from orders 
  where OrderDate like '1998-04-%';  

3. What sauces do we sell?
  
select ProductName from products where productname like '%sauce%';

4. You sell some kind of dried fruit that I liked very much. What is its name?

select ProductName from products where productname like '%dried%';

5. What employees ship products to Germany in December?

select EmployeeID, ShipCountry, ShippedDate from orders 
  where shipcountry like 'Germany' and ShippedDate like '%-12-%';
  
6. We have an issue with product 19. I need to know the total amount and the net amount of all orders
for product 19 where the customer took a discount.
  
select orderid, productid, unitprice, quantity, 
  (unitprice * quantity) as total_price, discount, 
  ((unitprice * quantity) - (unitprice * quantity * discount)) as net
  from order_details where productid = 19 and discount > 0;

7. I need a list of employees by title, first name, and last name, with the employee’s position under their
names, and a line separating each employee.

select titleofcourtesy || ' ' || firstname || ' ' || lastname || '
' || title || '
' from employees;

8. I need a list of our customers and the first name only of the customer representative.

select substr (contactname, 1 , pos −1) as first_name, companyname
	from (select *, instr ( contactname, ’ ’) as pos from customers)
	order by first_name;
 

9. Give me a list of our customer contacts alphabetically by last name.

select --contactname,
  substr(contactname, instr(contactname, ' ')) ||
  ', ' ||
  substr(contactname, 1, instr(contactname, ' ')) 
  as fullname
  from customers order by fullname; 

10. How many days old are you today?

select julianday('now') - julianday('1988-04-13');						
												