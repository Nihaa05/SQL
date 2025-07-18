select max(if(occupation = 'Doctor',name,null)) as doctor,
max(if(occupation='Professor',name,null)) as Professor,
max(if(occupation='Singer',name,null)) as Singer,
max(if(occupation='Actor',name,null)) as Actor
from (select name,occupation, row_number() over(partition by occupation order by Name) as rn from occupations) temp
group by rn
order by rn