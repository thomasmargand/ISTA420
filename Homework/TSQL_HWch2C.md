# TSQL Homework Chapter 2C
### Thomas Margand
### February 27, 2018


1. What is a data type? Why do we have types?

A Data type in SQL is a character type, either regular or unicode.  The difference lies in the the type of characters they contain and how much memory they use.  Regular characters require 1 byte of storage whereas unicode uses 2 bytes.  Different data types are better suited to different uses which is why there are types.

2. What is a collation? Name four elements of a collation.

Collation is a property of character data that encapsulates several aspects: language support, sort order, case sensitivity, accent sensitivity, and more.  Collation can be defined at four different levels: instance, database, column, and expression.

3. How would you strip whitespace from a string? For example, suppose you had "˽˽˽˽Dave˽˽˽˽" but wanted only "Dave."

`SELECT RTRIM(LTRIM('˽˽˽˽Dave˽˽˽˽'));`

4. Suppose you wanted to make a list of every college and university that was called an institute from the college table. Write the query.

`SELECT Name FROM colleges WHERE Name LIKE '%Institute%'`

5. How would you find out the index of the first space in a string? For example, the index of the first space in "Barack Hussein Obama" would be 7.

`SELECT CHARINDEX(' ','Barack Hussein Obama');`

6. How would you select just the first name in a list of the presidents. First names can be an arbitrary length, from "Cal" to "Benjamin."

`SELECT Name LEFT(Name,CHARINDEX(' ',name)-1) FROM presidents;`

7. Payments are due exactly 30 days from the date of the last function. Write a select query that calculates the date of the next payment. Pretend we want to update a column in a database that contains the date of the next payment. We will do this when we write UPDATE queries.

`SELECT DATEADD(day,30,lastfunction) FROM functions;`

8. Suppose your son or daughter wants to run a query every day that tells them the number of days until their 16th birthday. Write a select query that does this.

`SELECT DATEDIFF(day,GETDATE(),sixteenthbirthday);`

9. What function returns the current date? This is very useful in a table that maintains a log of events, such as user logins.

GETDATE and SYSDATETIME functions return the current date and time.
