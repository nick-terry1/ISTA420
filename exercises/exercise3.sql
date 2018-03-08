-- sql excercises ch3
-- author: nick terry
-- date: mar 7, 2018

--1
select e.empid, e.firstname, e.lastname, d.n
from HR.Employees as e
cross join dbo.Nums as d 
where n <= 5;

--2
-- whats wrong is that the query is aliased but they dont use the abbreviations. Correct version is:
select c.custid, c.companyname, o.orderid, o.orderdate
from sales.customers as c
inner join sales.orders as o 
on c.custid = o.custid;

--3
select c.custid, count(distinct o.orderid) as numorders, sum(od.qty) as totalqty
from sales.customers as c
join sales.orders as o on o.custid = c.custid
join sales.orderdetails as od on od.orderid = o.orderid
where c.country like 'usa' group by c.custid;

--4
select c.custid, c.companyname, o.orderid, o.orderdate
from Sales.Customers c 
left outer join Sales.orders o on c.custid = o.custid
order by custid ;

--5
select c.custid, c.companyname
from Sales.Customers c 
left outer join Sales.orders o on c.custid = o.custid
where orderid IS NULL 
order by custid ;