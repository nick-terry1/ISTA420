-- author: Nick terry
-- date: mar 15, 2018
-- title: sql lab 4

.headers on
.echo on

--1
--select customerid, count(orderid) from orders group by customerid order by count(orderid) desc;

with USAcust as (
select customerid from customers where country like 'USA')
select customerid, count(orderid) from orders
	where customerid in USAcust
group by customerid order by count(orderid) desc;

--2
with GERsup as 
(select s.supplierid from suppliers s where s.country like 'Germany')
	GERcust as 
(select c.customerid from customers c where c.country like 'Germany')
	GERord as
(select o.orderid from orders o where o.shipcountry like 'Germany')
select p.productname, sum(od.quantity) from products p 
	join GERsup on p.supplierid = GERsup.supplierid
	group by productname;
	
	--order_details od on p.productid = od.productid group by p.productname;