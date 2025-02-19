# Write your MySQL query statement below
with ranked_salaries as
(select e.id as employee_id,e.name as employee, e.salary, e.departmentId,
dense_rank() over (partition by e.departmentId order by e.salary desc) as salary_rank
from employee e)
select d.name as Department, r.employee, r.salary from department d
join ranked_salaries r on r.departmentId = d.id
where r.salary_rank <= 3