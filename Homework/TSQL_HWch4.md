# TSQL Homework Chapter 4
### Thomas Margand
### February 27, 2018

1. In your own words what is a subquery?

A query within a query.

2. In your own words what is a self contained subquery?

A self contained subquery has no dependency on tables from the outer query.

3. In your own words which is a correlated subquery?

A correlated subquery is dependent on the tables from the outer query.

4. Give an example of a subquery that returns a single value. When would you use this kind of subquery?

Any query that requires a specific table value to run could utilize a subquery pointing to that value.  In this way the outer query still runs even if the specific table value that is pointed to changes.  This might make sense if you wanted to look at every order completed by a specific employee or if you need to complete an arithmetic computation using the SUM function of column values.

5. Give an example of a subquery that returns multiple values. When would you use this kind of subquery?

The IN predicate is an example of a subquery that returns multiple values.  You might use this kind of query to determine every order that was placed from a certain location.

6. Give an example of a subquery that returns table values. When would you use this kind of subquery?

```
     USE TSQLV4;
     SELECT *
     FROM(SELECT custid, companyname
     FROM Sales.Customers
     WHERE country = N'USA') AS USAcusts;
```

You would use this type of subquery anytime you needed to return more than one column or rows worth of values.

7. What does the exists predicate do? Give an example.

The exists predicate accepts a subquery as input and returns true if the subquery returns any rows and false otherwise.

8. What happens if we use the NOT operator before a predicate? Give an example.

If you use the NOT operator before the IN predicate and any values in that set returns NULL than the operation will return an empty set.  Therefore when using the NOT operator one must ensure whether or not it is possible for NULL values to be returned and if SQL's method of handling NULL's will invalidate the query then they must be explicity excluded or another predicate must be used.   

9. When you use EXISTS or NOT EXISTS with respect to a row in a database, does it return two or three values? Explain your answer.

The EXIST predicate only uses two value logic, either true or false.  Any NULL values are evaluated to UNKNOWN and discarded.  Therefore the EXISTS predicate returns two values.  

10. How would you create a subquery to calculate aggregates? For example, you want to calculate yearly sales of a product, and you also want to keep a running sum of total sales. Explain how you would use a subquery to do this.

You query one instance of the view (call it 01) to return for each year the current year and quantity. You use a correlated subquery against a second instance of the view (call it 02) to calculate the running total quantity. The subquery should filter all rows in 02 where the order year is smaller than or equal to the current year in 01, and sum the quantities from 02.

```
     SELECT orderyear, qty,
      (SELECT SUM(02.qty)
       FROM Sales.OrderTotalsByYear AS 02
       WHERE 02.orderyear <= 01.orderyear) AS runqty
     FROM Sale.OrderTotalsByYear AS 01
     ORDER BY orderyear;

```
(Page 145)
