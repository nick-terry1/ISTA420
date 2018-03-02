-- title: sql exercise 2
-- author: nick terry
-- date: feb 29, 2018

.headers on

.schema customers

select contacttitle || ' ' || contactname || '
' || companyname || '
' || Address || '
' || city || ', ' || region || ' ' || postalcode
|| ' ' || country || '
' || '
' from customers;