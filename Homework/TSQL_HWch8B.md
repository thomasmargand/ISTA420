# TSQL Homework Chapter 8B
### Thomas Margand
### March 27, 2018


1. The sales tax rate for a state just changed. How would you update the state sales tax table to reflect the changes? Assume that this table has an ID column, an RATE column, and a STATE column.

```
UPDATE state sales tax
SET RATE = newVal
Where STATE = State
```

2. The revenue division has requested that you provide a report on what the actual sales taxes would have been for all orders in the past year, assuming the retroactivity of the new sales tax rate. How would you calculate this?

Update based on a join.
```
UPDATE ST
SET RATE = newVal
Where STATE = State
FROM TAXES as ST
JOIN ORDERS as O
on ST.ORDERS = O.Orderdate
WHERE STATE = State
```

3. Explain how the proprietary assignment update command works.

The proprietary assignment update syntax both updates data in a table and assigns values to variables at the same time. (Page 271)

4. What is one very important purpose of the MERGE SQL statement. What is ETL (not in the book).

Extract, transform, load.

5. What are the semantics of MERGE.
6. Write a typical INSERT OUTPUT statement.

```
INSERT INTO dbo.T1(datacol)
  OUTPUT inserted.keycol, inserted.datacol
	SELECT lastname
	FROM HR.Employees
	WHERE country = N'USA':
```

7. Write a typical UPDATE OUTPUT statement.
8. Write a typical DELETE OUTPUT statement.
9. Write a typical MERGE OUTPUT statement.
10. What is nested DML?
