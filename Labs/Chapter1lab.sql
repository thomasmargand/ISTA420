.echo on
.headers on

--Name: myfamily.sql
--Author: Thomas Margand
--Date: February 21, 2018

drop table if exists family;

create table family (
  id integer, 
  name text, 
  sex integer, 
  role text,
  age integer
);

insert into family values (1, 'Thomas' ,1, 'Boyfriend', 29);
insert into family values (2, 'Madeline' ,0, 'Girlfriend', 25);
insert into family values (3, 'Jenny' ,0, 'Dog', 6);

.schema family

select * from family;
select * from family where sex = 1;
select * from family where role like 'Boyfriend';
select name from family; 
select avg(age) from family;
select sum(age) from family;