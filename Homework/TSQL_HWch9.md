# TSQL Homework Chapter 9
### Thomas Margand
### April 3, 2018

1. What is a temporal table?

A system-versioned temporal table has two columns representing the validity period of the row, plus a linked history table with a mirrored schema holding older states of modified rows. (pg 297)

2. Under what circumstances would you use a temporal table? Temporal tables are in widespread use in certain kinds of businesses.

A temporal table would be used to query previous states of that table, for example if a business wanted to compare current revenue's to historical revenue's.

3. What are the semantics of a temporal table? There are seven of them.

 - A primary key
 - Two columns defined as DATETIME2 with any precision, which are non-nullable and represent the start and end of the row's validity period in the UTC time zone.
 - A start column that should be marked with the option GENERATED ALWAYS AS ROW START
 - An end column that should be marked with the option GENERATED ALWAYS AS ROW end
 - A designation of the period columns with the option PERIOD FOR SYSTEM_TIME(<startcol>, <endcol>)
 - The table option SYSTEM_VERSIONING, which should be set to ON
 - A linked history table (which SQL server can create for you) to hold the past states of modified rows
(pg 298)

4. How do you search a history table?

You query it in the same way you would any other table just specifying FOR SYSTEM_TIME

5. How do you modify a history table?

Modifying temporal tables is similar to modifying regular tables. You modify only the current table with INSERT, UPDATE, DELETE, and MERGE statements. (pg 301)

6. How do you delete data from a history table? Why would you want to delete data from a history table?

You can use a CTE to identify the data you would like to delete than change the SELECT keyword to DELETE when you have successfully identified the correct data.  You might want to delete data from a history table simply because the history table could quickly grow out of hand if the source table is a table that is updated frequently.

7. How do you search a history table?

You query it in the same way you would any other table just specifying FOR SYSTEM_TIME

8. How do you query all data from both a history file and the current data?

The FOR SYSTEM_TIME keyword allows you to specify the time or range you want to query from and SQL will search all tables to meet your criteria.  Additionally you can follow the FOR SYSTEM_TIME keyword with the keyword ALL which will query all rows from both tables. (pg 309)

9. How do you drop a temporal table?

Using the DROP TABLE keyword and specifying the table name. (pg 310)
