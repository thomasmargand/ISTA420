.echo on
.headers on

--name: mycars.sql
--author: Thomas Margand
--date: February 26, 2018

drop table if exists cars;

create table cars (
   id integer,
   year integer,
   make text,
   model text,
   transmission text
);

insert into cars values (1, 1997, 'Chevrolet', 'Cavalier', 'Manual');
insert into cars values (2, 1999, 'Kia', 'Sportage', 'Manual');
insert into cars values (3, 1992, 'Honda', 'Prelude', 'Manual');
insert into cars values (4, 1999, 'Honda', 'Passport', 'Automatic');
insert into cars values (5, 2012, 'Volkswagen', 'GTI', 'Manual');
insert into cars values (6, 2015, 'Toyota', '4Runner', 'Automatic');
.schema cars

select * from cars;
select * from cars where transmission like 'Manual';
select * from cars where transmission like 'Automatic';
select * from cars where make like 'Honda';
select model from cars;
