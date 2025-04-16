# Write your MySQL query statement below
select users.name, sum(case when distance is null then 0 else distance end) as travelled_distance
from users 
left join rides on users.id = rides.user_id
group by users.id, users.name
order by travelled_distance desc, name asc