# Write your MySQL query statement below
with frnds as(
    select requester_id as id from RequestAccepted 
    union all
    select accepter_id as id from RequestAccepted
)
select id, count(id) as num 
from frnds
group by id
order by num desc
limit 1