# Write your MySQL query statement below
select sa.machine_id, round(avg(ea.timestamp - sa.timestamp),3) as processing_time
from activity sa
join activity ea
on sa.machine_id = ea.machine_id
and sa.process_id = ea.process_id
and sa.activity_type = 'start'
and ea.activity_type = 'end'
group by sa.machine_id
