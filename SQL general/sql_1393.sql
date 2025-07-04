# Write your MySQL query statement below
select distinct stock_name,
sum(case when operation ='Sell' then price else -price end)
as capital_gain_loss
from stocks
group by stock_name
