# Write your MySQL query statement below
select p.product_id, 
coalesce ( round(sum(us.units * p.price) / sum(us.units) ,2) ,0) as average_price
from prices p left join unitsSold us
on us.product_id = p.product_id
and purchase_date between p.start_date and p.end_date
group by p.product_id
