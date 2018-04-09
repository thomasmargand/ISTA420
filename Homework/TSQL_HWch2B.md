# TSQL Homework Chapter 2B
### Thomas Margand
### February 27, 2018


1. List the order of execution of an SQL query.

The order of execution in an SQL query is; FROM, WHERE, GROUP BY, HAVING, SELECT (Expressions, DISTINCT),
ORDER BY (TOP/OFFSET-FETCH).

2. What does the FROM clause do?

The FROM clause is the very first clause that is logically processed.  In this clause, you specify the
names of the tables you want to query and table operators that operate on those tables. The FROM clause
is where you specify the name of the table you want to query.

3. What does the WHERE clause do?

In the WHERE clause you specify a predicate or logical expression to filter the rows returned by the FROM
phase. Only rows for which the logical expression evaluates to TRUE are returned by the WHERE phase to
the subsequent logical query processing phase.

4. What does the GROUP BY clause do?

You can use the GROUP BY phase to arrange the rows returned by the previous logical query processing phase
in groups.  The groups are determined by the elements you specify in the GROUP BY clause.

5. What does the HAVING clause do?

Whereas the WHERE clause is a row filter, the HAVING clause is a group filter. Only groups for which the
HAVING predicate value evaluates to TRUE are returned by the HAVING phase to the next logical query
processing phase.

6. What does the SELECT clause do?

The select clause is where you specify the attributes (columns) you want to return in the result table of
the query.

7. What does the DISTINCT keyword do?

The DISTINCT keyword removes duplicates from query results.

8. What does the ORDER BY clause do?

You use the ORDER BY clause to sort the rows in the output for presentation purposes.  In terms of logical
query processing, ORDER BY is the very last clause to be processed.

9. What does the LIMIT clause do? This is not in the book.

The SQL SELECT LIMIT statement is used to retrieve records from one or more tables in a database and limit
the number of records returned based on a limit value.

10. What does the TOP clause do?

The TOP filter is proprietary T-SQL feature you can use to limit the number or percentage of rows your query
returns. It relies on two elements as a part of its specifications: one is the number or percent of rows to
return, and the other is the ordering.

11. What do the OFFSET...FETCH...clause do?

T-SQL supports a standard, TOP like filter, called OFFSET-FETCH, which does support a skipping option. This
makes it very useful for ad-hoc paging purposes. The OFFSET-FETCH filter is considered an extension to the
ORDER BY clause. With the OFFSET clause you indicate how many rows to skip, and with the FETCH clause you
indicate how many rows to filter after the skipped rows.
