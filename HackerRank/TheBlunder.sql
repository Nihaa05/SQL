select ceil((avg(salary))- (avg(replace(salary,'0','')))) as avg_salary
from employees