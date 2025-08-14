# Write your MySQL query statement below
select u.user_id as buyer_id , u.join_date , count(o.order_id) as orders_in_2019
from users u
left join orders o on u.user_id = o.buyer_id
and o.order_date >= '2019-1-1'
and o.order_date < '2020-1-1'
group by u.user_id, u.join_date
