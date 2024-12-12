/*https://leetcode.com/problems/article-views-i/?envType=study-plan-v2&envId=top-sql-50*/
select 
round(sum(player_loggedin)/count(distinct player_id),2) as fraction
from(select player_id , 
datediff(event_date,min(event_date) 
over(partition by player_id)) = 1 as player_loggedin from activity) as new_table