-- sql lab 4
-- author: nick terry
-- date: mar 8, 2018

.headers on
--1
select o.orderid, o.employeeid from orders o where o.employeeid = (
select e.employeeid from employees e where e.firstname like 'janet');

--2
select p.productname from products p where p.categoryid in (
select c.categoryid from categories c where c.categoryname like 'seafood')

--3
select o.orderid, o.employeeid from orders o where o.employeeid in (
select e.employeeid from employees e where e.lastname like 'd%');

--4
select p.productname, p.supplierid from products p where p.supplierid in (
select s.supplierid from suppliers s where s.companyname in ('Exotic Liquids', "Grandma Kelly's Homestead", 'Tokyo Traders'));

--5
select p.productid, p.productname from products p where p.supplierid in (
select s.supplierid from suppliers s where s.country in ('Australia', 'Japan', 'Singapore'));

--6

--7
select distinct o.orderdate, o.employeeid from orders o where o.orderdate = (
select max(o1.orderdate) from orders o1 where o1.employeeid = o.employeeid)
order by o.employeeid;

select o.orderdate, o.employeeid from orders o where o.orderdate = (
select min(o1.orderdate) from orders o1 where o1.employeeid = o.employeeid)
order by o.employeeid;