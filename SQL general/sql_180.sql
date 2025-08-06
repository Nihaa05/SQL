select distinct log1.num as ConsecutiveNums
from logs as log1, logs as log_2, logs as log3
where 
    log1.id+1 = log_2.id and
    log_2.id+1 = log3.id and
    log1.num = log_2.num and
    log_2.num = log3.num
