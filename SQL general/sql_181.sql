# Write your MySQL query statement below
select e.name as Employee from employee e, employee manager 
where e.managerid = manager.Id
and e.salary > manager.salary 