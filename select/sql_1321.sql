# Write your MySQL query statement below
select visited_on, amount, ROUND(amount/7,2) as average_amount
from (
    select distinct visited_on,
    sum(amount) over(order by visited_on range between interval 6 day preceding
    and current row) as AMOUNT, min(visited_on) over() as day_1
    from customer)t
where visited_on >= day_1 +6 ;