# Write your MySQL query statement below
select C.name as Customers from Customers C
where id not in (select customerId from Orders)


select C.name as Customers 
from Customers C
left join Orders O on C.id = O.customerId
where O.id is null