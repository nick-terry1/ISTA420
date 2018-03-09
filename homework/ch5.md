## SQL hw ch5  
#### author: nick terry  
#### date: mar 8, 2018  

1. A table expression is a query expression that represents a valid relational table. A technical definition of a table 
expression is aliasing a table inside a query and referencing it using another table.  

2. FROM  

3. You can refer to columns defined in the table subquery because of the order of operations and the order by and 
where clauses are operated after the select clause of the inner query.  

4. WITH  

5. Yes because unlike nested table expressions the table is aliased first and therefore can be referenced throughout.  

6. Yes  

7. Views are stored as permanent objects and dont disappear after a single use like derived tables and CTE's, therefore yes.  

8. The check option prevents modifications through the view that conflict with the view's filter. This is important 
because it prevents people from incorrectly inserting incorrect information to a view.  

9. Schemabinding binds the schema of referenced objects and columns to the schema of the referencing object. It is important 
because you cant drop columns or tables which would otherwise cause errors.  

10. A table valued function is a reusable table expression that supports input parameters.  

11. Apply is like join except that with apply you can actually refer to objects from one side to the opposite side.  

12. Two forms of apply is cross apply and outer apply. An example of both:  
SELECT S.shipperid, E.empid  
FROM Sales.Shippers AS S  
CROSS APPLY HR.Employees AS E;  

SELECT C.custid, A.orderid, A.orderdate  
FROM Sales.Customers AS C  
OUTER APPLY  
(SELECT TOP (3) orderid, empid, orderdate, requireddate  
FROM Sales.Orders AS O  
WHERE O.custid = C.custid  
ORDER BY orderdate DESC, orderid DESC) AS A;