## SQL HW ch4
#### author: nick terry
#### date: mar 5, 2018

1. A subquery is a nested query inside another query.

2. A self-contained subquery is a query that isnt related to the tables referenced in the outer query at all.

3. A correlated subquery is the opposite of a self-contained one, in that it DOES depend on the tables of the outer query.

4. Example of a subquery that returns one value:  
DECLARE @maxid as INT = (SELECT MAX(orderid) FROM Sales.Orders;  
SELECT orderid, orderdate, empid, custid  
FROM Sales.Orders  
WHERE orderid = @maxid;  

You can use this kind of query by to query a result that you got from the previous query.  

5. Example of a subquery that returns more than one value:  
SELECT orderid  
FROM Sales.Orders  
WHERE empid IN  
	(SELECT E.empid  
	FROM HR.Employees AS E  
	WHERE E.lastname LIKE N'D%');  
	
The IN clause is for multiple values in subquery returns, and this type of subquery is for referencing another selection that you know is going to return more than one result.  

6. Example of a subquery that returns a table value:  
SELECT *  
FROM (SELECT custid, companyname  
	  FROM Sales.Customers  
	  WHERE country = N'USA' ) AS  
	  USACusts;  
	  
You would use this subquery to make a seperate table and query it.  

7. The exists predicate returns a true or false depending on whether there are any rows returned. An example is:  
SELECT custid, companyname  
FROM Sales.Customers AS C  
WHERE country = N'Spain'  
AND EXISTS  
(SELECT * FROM Sales.Orders AS O  
WHERE O.Customers = C.custid);  

8. If the NOT operator is used before a predicate to negate it, hence returning all values that dont meet the clause. An example is:  
SELECT custid, companyname  
FROM Sales.Customers  
WHERE custid NOT IN(SELECT O.custid FROM Sales.Orders AS O);  

9. Trick question - it returns one value (either true or false). The query that has exists is only asking whether the condition exists, its not asking for those values.  

10. Using the example given in the question, you would use a subquery to calculate aggregates by:  
SELECT salesyear, sales,  
(SELECT SUM(02.sales)  
FROM Sales.OrderTotalsbyYear AS  
02  
WHERE 02.salesyear <=  
01.salesyear) AS runsales  
FROM Sales.OrderTotalbyYear AS 01  

Here the first query lists three columns: salesyear, sales, and a third column to be created by the inner subquery. The inner subquery uses the add function 
to add the values of the sales column for only the years where 01.salesyear is <= 02.salesyear.