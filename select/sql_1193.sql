# Write your MySQL query statement below
select distinct date_format(trans_date, '%Y-%m') as month,
country, count(id) as trans_count,
count(case when state like '%approved' then 1 end) as approved_count,
sum(amount) as trans_total_amount,
sum(case when state like '%approved' then amount else 0 end) as approved_total_amount
from transactions
group by month,country
