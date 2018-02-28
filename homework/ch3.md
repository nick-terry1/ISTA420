## SQL Homework Ch3
#### author: nick terry
#### date: feb 28, 2018



1. In general you would want to join tables together to access information from more than one table at the same time.

2. The output from an inner join would be a table that has data from two tables matched up based on a shared primary key.

3. An outer join is a lot like an inner join in that it combines tables based on a shared key, however in an outer join you include the rows that dont have values in the non-preserved table, and those are added as NULL values.

4. The output of a cross join is a new table with every possible row combination.

5. I would guess that the mnemonic ohio means that the outer rows will be appended to the ends of the joint table and the inner row will be sandwiched in the middle.

6. An example of a composite join is:  
  from sample.table1 as t1
  inner join sample.table2 as t2
  on t1.header = t2.anotherHeader
  and t1.headerTwo = t2.secondHeader
 
7. The first example finds the total number of customers which is pointless to then join tables because the customers table is preserved - its the same as just SELECT COUNT(custid) FROM Sales.Customers; The second example counts orders on the the nonpreserved table so only orders with a custid are counted.
 
8. There wouldnt be any custid column if there were no sales after 2016.