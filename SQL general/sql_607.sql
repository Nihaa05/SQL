# Write your MySQL query statement below
select SalesPerson.name from SalesPerson
where SalesPerson.name not in 
(select SalesPerson.name 
from SalesPerson
left join orders on SalesPerson.sales_id = orders.sales_id
left join company on orders.com_id = company.com_id
where company.name = 'RED')