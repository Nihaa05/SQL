# Write your MySQL query statement below
select products.product_name, sum(orders.unit) as unit
from products 
left join orders on products.product_id = orders.product_id
where orders.order_date like '2020-02-%'
group by products.product_id
having sum(orders.unit) >= 100