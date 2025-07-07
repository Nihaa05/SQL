with reviews as(
    select employee_id,review_date,rating,
    LAG(rating) over(partition by employee_id order by review_date desc) as next_rating,
    LAG(rating,2) over(partition by employee_id order by review_date desc) as next_next_rating,
    row_number() over(partition by employee_id order by review_date desc) as ranks
    from performance_reviews
),
scores as(
    select employee_id, (next_next_rating - rating) as improvement_score
    from reviews
    where rating < next_rating and next_rating < next_next_rating and ranks = 3
)
select e.employee_id,name, improvement_score
from scores as s
left join employees as e
using(employee_id)
order by improvement_score desc, name
