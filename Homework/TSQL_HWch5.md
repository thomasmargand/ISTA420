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

Yes pg167

7. In SQL, is view a durable object?

8. In a view, what does with check option do? Why is this important?

9. In a view, what does schemabinding do? Why is this important?

10. What is a table valued function?

11. What does the apply operator do?

12. What are the two forms of the Apply operator? Give an example of each.
