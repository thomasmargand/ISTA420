-- Name: SQL_ex3.sql
-- Author: Thomas Margand
-- Date: March 7, 2018

.echo on
.headers on

select 
 od.orderid, 
 od.productid, 
 od.unitprice, 
 od.quantity, 
  (od.unitprice * od.quantity) as LineTotal,
  ((od.unitprice * od.quantity)/  
  (select sum(od3.unitprice * od3.quantity) as PctOrderTotal 
    from order_details od3 where od3.orderid = od.orderid) * 100) 
	as PctOrderTotal 	
from order_details od limit 10;