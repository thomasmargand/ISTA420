# TSQL Homework Chapter 5
### Thomas Margand
### March 1, 2018

1. What is a table expression? Can you give a technical definition of a table expression?

A table expression is a named query expression that represents a valid relational table. (pg 161)

2. In what SQL clause are derived tables (table valued subqueries) located?

Derived tables are defined in the FROM clause of an outer query. (pg 161)

3. Why can you refer to column aliases in an outer query that you defined in an inner table valued subquery?

You can reference column aliases just created in an inner table valued query because the inner table valued query is logically processed first as dictated by the order of precedence. Therefore the outer query doesn't know that the column alias was only just defined. (pg 163)

4. What SQL keyword defines a common table expression?

WITH. (pg 167)

5. When using common table expressions, can a subsequent derived table use a table alias declared in a preceding table expression?

Yes. (pg 169)

6. Can a main query refer to a previously defined common table expression by multiple aliases?

Yes. (pg167)

7. In SQL, is view a durable object?

Views and inline table-valued functions are two types of table expressions whose definitions are stored as permanent objects in the database, making them reusable and therefore durable. (pg 171)

8. In a view, what does with check option do? Why is this important?

The purpose of the check option is to prevent modifications through the view that conflict with the view's filter. This is important because it prevents modifications that that are not visible through the views filter. (pg 178)

9. In a view, what does schemabinding do? Why is this important?

The schemabinding option is available to views and UDF's; it binds the schema of referenced objects and columns to the schema of the referencing object. It indicates that referenced objects cannot be dropped and the referenced columns can not be dropped or altered. This is important because without schemabinding one would be able to drop columns or even tables altogether which could lead to errors as run time. (pg 177)

10. What is a table valued function?

A table valued function is a reusable table expression that supports input parameters. (pg 178)

11. What does the APPLY operator do?

The APPLY operator is a table operator that is used in the FROM clause of a query. There are two types of APPLY; CROSS APPLY and OUTER APPLY. APPLY performs its work in logical query phases, CROSS APPLY implements only one logical query processing phase, whereas OUTER APPLY implements two. It is similar to a JOIN. (pg 180)

12. What are the two forms of the APPLY operator? Give an example of each.

The CROSS APPLY operator implements one logical query processing phase it applies the right table to each row from the left table and produces a result table with the unified result sets.  The OUTER APPLY operator has a second logical phase that preserves all left rows. It keeps the rows from the left side for which there are no matches on the right side, and it uses NULLs as place holders on the right side. (pg 181)  
