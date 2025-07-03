SELECT employee_id , department_id FROM Employee
GROUP BY employee_id
HAVING COUNT(employee_id) = 1
UNION
SELECT employee_id , department_id FROM employee
WHERE primary_flag = 'Y'




select employee_id, department_id
from employee
where primary_flag like '%Y'
or employee_id in (
    select employee_id from employee
    group by employee_id having count(*) = 1
)
