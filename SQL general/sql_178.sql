select score, (select count(distinct Score) 
from Scores where Score >= s.Score) `Rank`
from Scores s
order by Score desc

select score,dense_rank() over(order by score desc) as `rank`
from scores
