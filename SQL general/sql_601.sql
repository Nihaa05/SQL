# Write your MySQL query statement below
with CTE as(
select id, visit_date, people,
LAG(people,1) over (order by id) prev1,
LAG(people,2) over (order by id) prev2,
LEAD(people,1) over (order by id) next1,
LEAD(people,2) over (order by id) next2
from stadium
)
select id, visit_date, people
from CTE
where (people>=100 and prev1 >= 100 and prev2 >= 100 )
or (people >= 100 and next1 >= 100 and next2 >= 100)
or (people >= 100 and prev1 >= 100 and next1 >= 100)
