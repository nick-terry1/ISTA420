## Ch 8a SQL HW  
#### author: nick terry  
#### date: mar 22, 2018  

1. Inserting would require a list of rows because you need to know which rows exist. If you accidentally forget a row, or misspell it sql will create a new row.  

2. You do use a subquery because youre inserting the results of a query as a new column. If you didnt use a subquery 
you would insert just use regular insert. 

3. The operand is the result set from a stored procedure. 

4. YOu use it insert result from a query into a new table. 

5. The parameters are the data type, field terminator, and row terminator. 

6. It guarantees uniqueness if you step the incriment and its not zero and if the session doesnt reset. 

7. Use the create sequence command. 

8. Create a sequence object and give it a name so you can call it later. 

9. Alter changes any of the sequence properties except the data type. 

10. Difference is delete erases all data from the table and truncate has no filter. 

11. Delete is conditional on the values of rows and drop just deletes the whole table. 