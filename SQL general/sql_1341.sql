# Write your MySQL query statement below
with TopUser as(select u.name as results
from users u join movierating mr on
u.user_id = mr.user_id
group by mr.user_id
order by count(mr.movie_id) desc,u.name asc
limit 1),
TopMovie as (select m.title as results 
from movies m join movierating mr on
m.movie_id = mr.movie_id
where mr.created_at between '2020-02-01' and '2020-02-29'
group by mr.movie_id
order by avg(mr.rating) desc, m.title asc
limit 1)
select * from TopUser
union all
select * from TopMovie
