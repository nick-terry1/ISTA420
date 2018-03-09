-- SQL exercise 3 version 2 (the one that got assigned after exercise 3 had already been assigned)
-- author: nick terry
-- date: mar 8, 2018

.headers on;

select od1.orderid, od1.productid, od1.unitprice, od1.quantity, 
(od1.unitprice * od1.quantity) as itemprice, 
(count(od2.orderid)/(select sum(od2.quantity)*100 from order_details od2 
where od2.orderid = od1.orderid) as percen
from order_details as od1;