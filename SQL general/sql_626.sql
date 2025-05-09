# Write your MySQL query statement below
select 
case when id % 2 = 0 #if id is even then -1
        then id-1
     when id % 2 != 0 and id = (select count(*) from seat) #if id is odd and last one in the list then do nothing
        then id
        else id+1.  # else make it odd by +1
        end as id, student
from seat
order by id
