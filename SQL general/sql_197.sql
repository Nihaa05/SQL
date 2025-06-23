# Write your MySQL query statement below
select w2.id as Id
from Weather w1
join weather w2
where datediff(w2.recordDate, w1.recordDate) = 1
and w2.temperature > w1.temperature
