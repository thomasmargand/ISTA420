.headers on
.echo on 

--Name: chapter8lab.sql
--Author: Thomas Margand 
--Date: April 8, 2018

1. Examine the csv file named presidents-short.csv in the SQL directory.
2. Create a new database named presidents.db.

drop table if exists presidents;
create table presidents (
	name text,
	entered text,
	left text,
	party text,
	state text);

3. Create a new table with an appropriate table schema.

.schema presidents

4. Import the CSV data into the table you just created.

.import presidents−short.csv presidents

5. Delete the first record from your table. This is the header.

delete from presidents where name like ’Pres%’;

6. Alter the presidents table by adding an id key column. Note: SQLite does not allow table alteration by
adding either a primary key or an auto increment column. Also, make sure that you get the numbers
correct. George Washington was our first president, so his id should be 1.

alter table presidents add column id integer;

7. Bring the data up to date by updating the last row.

update presidents set id = (rowid - 1);

8. Bring the data up to date by adding a new row.

select * from presidents;
