-- SQL exercise 4
-- author: nick terry
-- date: mar 28, 2018

--1
-- Created using sql server GUI interface

--2
bulk insert [presidents.db].dbo.pres from
'C:\Users\nickt\ista420\presidents.txt' 
with 
(
datafiletype = 'char',
fieldterminator = ',',
rowterminator = '\n'
);

--3
delete from [presidents.db].dbo.pres where born like 'Born';

--4
create sequence dbo.seqid as int minvalue 1;

update dbo.pres set number = next value for dbo.seqid;

alter table dbo.pres alter column number int not null;

alter table dbo.pres add primary key (number);

--5
update pres
set ended = '3/4/2018'
output inserted.ended
where number = 45;

--6
insert into pres (first, middle, last, party, number)
output inserted.first, inserted.middle, inserted.last, inserted.party, inserted.number
values ('Donald','J.','Trump','Republican',45);

--7
select distinct home, party, count(number) as numberofPresidents 
from pres group by home, party;

--8
select last, datediff(day,started,ended) from pres;

--9
select last, DATEDIFF(day,born,started) as AgeInDays from pres; 