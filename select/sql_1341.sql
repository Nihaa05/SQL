# Write your MySQL query statement below
(select name as results 
from users u
left join movierating mr ON
u.user_id = mr.user_id
group by name 
order by count(rating) desc, name asc limit 1)
union all
(select title from movies m
left join movierating mr on
mr.movie_id = m.movie_id
where date_format(created_at,'%Y-%m') = '2020-02'
group by title
order by avg(rating) desc,title ASC limit 1)