select distinct num as ConsecutiveNums from (select num,
lead(num,1) over (order by id) as next_num,
lead(num,2) over (order by id) as next_num_2
from logs) as consecutiveNum 
where num =next_num and num = next_num_2
