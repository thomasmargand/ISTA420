# TSQL Homework Chapter 7
### Thomas Margand
### March 14, 2018


1. What is a window function?

A window function is a function that, for each row, computes a scalar result value based on a calculation against a subset of the rows from the underlying query.

2. What does PARTITION do?

The window-partition clause (PARTITION BY) restricts the window to the subset of rows that have the same values in the partitioning columns as in the current row.

3. What does ORDER BY do?

The window-order clause (ORDER BY) supports a frame specification.

4. What does ROWS BETWEEN do?

A window frame clause (ROWS BETWEEN) filters a frame, or a subset, of rows from the window partition between the two specified delimiters.

5. What is a ranking window function? Why would you use it? Give an example

6. What is an offset window function? Why would you use it? Give an example.

7.  

8. The FIRST_VALUE and LAST_VALUE functions return an element from the first and last rows in the window frame, respectively.
