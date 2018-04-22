-- Name: SQL_ex2.sql
-- Author: Thomas Margand
-- Date: March 7, 2018

.echo on
.headers on

select distinct ContactTitle || ' ' ||  ContactName || x'0a' || 
CompanyName || x'0a' || Address || x'0a' || City || ' ' || Region || ' ' || 
PostalCode || ' ' || Country || x'0a' || x'0a' from customers;