## sql hw ch9  
#### author: nick terry  
#### date: mar 24, 2018  

1. A temporal table is a table that has previous states of the table based on system times.  

2. You would use a temporal table if you accidentally deleted data or if you need to reference trends over time.  

3. Seven semantics of a temporal table is Generated Always as row start, generated always as row end, period for system_time, system versioning, hidden, System_time contained in, At time zone  

4. You search a history table by adding the FOR SYSTEM_TIME clause and a subclause that indicates the time you are searching for. Other than that its a normal query.  

5. You modify a history table by using the insert, delete, etc clauses same as a regular table but with first enable system versioning.  

6. To perminately delete data.  

7. You search a history table by adding the FOR SYSTEM_TIME clause and a subclause that indicates the time you are searching for. Other than that its a normal query.  

8. You can query all data by using the ALL subclause and using the FOR SYSTEM_TIME subclause.  

9. You drop a history table by using drop table.