## SQL hw ch8b  
#### author: nick terry  
#### date: mar 24, 2018  

1. Use the update clause like:  
UPDATE db.StateTax  
SET rate = newrate;  

2. UPDATE db.StateTax  
SET rate = newrate  
WHERE date like '2017-%';  

3. The propriety assignment update command works by changing the subset of rows in a column. You can specify the specific rows using where clause.  

4. Merge takes data from a source and transfer it to a target. ETL is source to target data comparison testing.  

5. Merge is the same as join.  

6. Insert into dbo.T1(datacol)  
	output inserted.keycol,  
inserted.datacol  
	select lastname  
	from hr.employees  
	where country = N'USA';  
  
where datacol is the name of the new column, and keycol is the primary key column of the table t1.  

7. update dbo.orderdetails  
	set discount += 0.05  
output  
	inserted.orderid,  
	inserted.productid,  
	deleted.discount as olddiscount,  
	isertd.discount as newdiscount  
where productid = 51;

8. delete from dbo.orders  
	output  
		deleted.orderid,  
		deleted.orderdate,  
		deleted.empid,  
		deleted.custid
where orderdate < '20160101';  

9. Merge into dbo.customers as tgt  
using dbo.customerstage as src  
	on tgt.custid = src.custid  
when matched then  
	update set  
		tgt.companyname = src.companyname, 
		tgt.phone = src.phone,  
		tgt.address = src.address  
when not matched then  
	insert (custid, companyname, phone, address)  
	values (src.custid, src.companyname, src.phone, src.address)  
output $action as theaction, inserted.custid,  
	deleted.companyname as oldcompanyname  
	inserted.companyname as newcompanyname  
	deleted.phone as oldphone,  
	inserted.phone as newphone,  
	deleted.address as oldaddress, 
	inserted.address as newaddress;
	
10. Nested DML is when you only need to return a subset of the specified rows.  
