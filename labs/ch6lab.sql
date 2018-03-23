.echo on 
.headers on

-- title: sql ch6 lab
-- author: nick terry
-- date: mar 21, 2018

--1
select distinct country from customers
union 
select distinct country from suppliers;

--2
select city, country from customers
union
select city, country from suppliers)
order by country, city;

--3
select country from customers
intersect 
select country from suppliers
order by country;

--4
select city, country from customers
intersect
select city, country from suppliers)
order by country, city;

--5
select distinct country from customers
except
select distinct country from suppliers
order by country;

--6
select distinct city, country from customers
except
select distinct city, country from suppliers
order by country, city;