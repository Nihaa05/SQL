# Write your MySQL query statement below
select employee_id 
    from employees e 
    where employee_id not in 
    ( select employee_id from Salaries) 
    union 
    select employee_id from Salaries s
    where employee_id not in 
    ( select employee_id from Employees)
    order by employee_id

