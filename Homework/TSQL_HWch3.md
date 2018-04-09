# TSQL Homework Chapter 3
### Thomas Margand
### February 27, 2018


1. In general, why would you even want to join two (or more) tables together? This is a good time to think about the nature of relational algebra.

If you are performing a query a that requires information from two different tables and further if the information is relational, for example every row from table A has a corresponding matching row on table B, then joining two tables is the most logical way to generate the desired output from your query.

2. Describe in your own words the output from an inner join.

The output from an inner join is specified by the user in the predicate using the syntax ON.  So if information is needed from two different tables rather than doing a simple cross join that generates one very large table, an inner join matches information from one table to the other based on the specifications in the predicate clause.  This returns a more specific and simplified table.

3. Describe in your own words the output from an outer join.

The output from an outer join is very similar to the output from an inner join.  The difference is that there is a third phase to the join that preserves the rows of a specified table.  Therefore if there are rows in the preserved table that do not have corresponding rows in the joining table, those rows will still be displayed in the output.  In an inner join any rows from one table that do not have a corresponding match to the rows from the joining table based on the predicate ON clause, are discarded.  An outer join allows those unmatched rows to be preserved and included in the output.


4. Describe in your own words the output from a cross join.

A cross join is the simplest type of join that simply combines all the rows from one table and matches them to the other.  A table with 10 rows that is cross joined to another table with 10 rows results in a table with 100 rows.

5. A convenient mnemonic for remembering the various joins is "Ohio." Why is this true?

It isn't true, that mnemonic doesn't exist and certainly is not convenient. The major types of joins are cross, inner, and outer (left, right and full).

6. Give an example of a composite join.

A composite joins matches multiple values between the two tables being joined.  An example would be ON size = xsmall, type = helmet.

7. What is the difference between the following two queries? The business problem is "How many orders do we have from each customer?"

The first query searches all rows both inner and outer, therefore it will count rows with a value of null because the COUNT aggregate does not examine the rows contents it simply counts it if it exists.  The second query specifies that only orders with an orderid should be counted, therefore the second query will return the desired information correctly.

8. What might be one reason the following query does not return the column custID in this query?

There may not have been any orders on or after that date.  Perhaps the date is formatted differently between the two tables or perhaps one table simply doesn't have the date.
