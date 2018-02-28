### SQL Homework 2c
#### author: nick terry
#### date: feb 28, 2018




1. Data types designate entries as strings, integers, or whatever type of data the spot in memory will hold. We have data types to avoid confusion on the computers part and for processing speed.

2. A collation is a property of data that encapsulates several aspects: language support, sort order, accent sensitivity, etc. The four elements of a collation are instance, database, column, and expression.

3. You strip whitespace from a string using the RTRIM and LTRIM functions. To strip the example use the code SELECT RTRIM(LTRIM('   DAVE   '));

4. SELECT * FROM college where name like %institute%;

assuming the name of the college is in a column named 'name'

5. SELECT PATINDEX('%[_]%','sample string');
or SELECT CHARINDEX(' ','sample string');

output would be 6 for both

6. Assuming that the name column (in my example named 'nameCol') contains the presidents full name ex. Barrack Hussein Obama you would get the first name only by:

> SELECT LEFT(nameCol, CHARINDEX(' ',nameCol) -1);

7. > SELECT DATEADD(day, 30, '20180222'); where 20180222 is the date of the last function.

8. > SELECT DATEDIFF(dd,GETDATE(),'20180222'); 
where 20180222 is the date of the girls 16th bday

9. As used in the last example, the function GETDATE() returns the current date. 


