# TSQL Homework Chapter 6
### Thomas Margand
### March 14, 2018


1. What does a set operator do?

Set operators are operators that combine rows from two query result sets (or multisets). Some of the operators remove duplicates from the result, and hence return a set, whereas other don't, and hence return a multiset. (Page 193)

2. What are the general requirements of a set operator?

The general requirements for a set operator are that the two queries involved must produce results with the same number of columns, and corresponding columns must have compatible data types. Otherwise each of the individual queries can have all logical query processing phases except for ORDER BY. (Page 193)

3. What is a venn diagram? This is not in the book.

A diagram representing mathematical or logical sets pictorially as circles or closed curves within an enclosing rectangle (the universal set), common elements of the sets being represented by the areas of overlap among the circles. (Google)

4. Draw a venn diagram of the UNION operator. What does it do?

The UNION operator unifies the results of two input queries. If a row appears in any of the input sets, it will appear in the result of the UNION operator. (Page 194)

5. Draw a venn diagram of the UNION ALL operator. What does it do?

The UNION ALL operator unifies the two input query results without attempting to remove duplicates from the result. Assuming that query1 returns m rows and query2 returns n rows, query1 UNION ALL query2 returns m + n rows. (Page 194)

6. Draw a venn diagram of the INTERSECT operator. What does it do?

The INTERSECT operator returns only the rows that are common to the results of the two input queries. As long as a row appears at least once in both query results, it's returned only once in the operator's result. (Page 196)

7. If SQL server supported the INTERSECT ALL operator, what would it do?

INTERSECT ALL returns the number of duplicate rows matching the lower of the counts in both input multisets.  Essentially how ever many times each row intersects is how many times it would appear in the result.  So if query 1 had 6 instances of row R and query 2 had 4 instances of row R INTERSECT ALL would return 4 instances of row R because that's how many times it intersected. (Page 197)

8. Draw a venn diagram of the EXCEPT operator. What does it do?

The EXCEPT operator implements set differences. It operates on the results of two input queries and returns rows that appear in the first input, but not the second. (Page 199)

9. If SQL server supported the EXCEPT ALL operator, what would it do?

EXCEPT ALL returns only occurrences of a row from the first multiset that do not have a corresponding occurrence in the second. (Page 200)

10. What is the precedence of the set operators?

SQL defines precedence among set operators. The INTERSECT operator precedes UNION and EXCEPT, and UNION and EXCEPT are evaluated in order of appearance. Using the ALL variant doesn't change the precedence. 
