# Write your MySQL query statement below
select d.name as Department, e.name as Employee, e.salary as Salary
from employee e, department d where
 d.id = e.departmentId and 
(e.departmentId, salary) IN
(select departmentId, Max(salary) from employee
group by departmentId)