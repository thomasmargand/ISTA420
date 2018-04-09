1. What are the regions?

select * from region;

2. What are the cities?

select territorydescription from territories;

3. What are the cities in the Southern region?

select territorydescription from territories where RegionID = 4;

4. How do you run this query with the fully qualified column name?

select territories.territorydescription from territories where RegionID = 4;

5. How do you run this query with a table alias?

select T.territorydescription from territories T where RegionID = 4;

6. What is the contact name, telephone number, and city for each customer?

select ContactName , CompanyName , Phone , City from customers;

7. What are the products currently out of stock?

select productname , unitsinstock from products where unitsinstock = 0;

8. What are the ten products currently in stock with the least amount on hand?

select productname , unitsinstock from products where unitsinstock > 0 order by unitsinstock
	limit 10;

9. What are the five most expensive products in stock?

select productname , unitprice from products where unitsinstock > 0 order by unitprice desc
limit 5;

10. How many products does Northwind have? How many customers? How many suppliers?

select count (*) from products;
select count (*) from customers;
select count (*) from suppliers;

