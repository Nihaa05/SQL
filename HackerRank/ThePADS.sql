select concat(Name,'(',left(Occupation,1),')') from occupations
order by name;

select concat('There are a total of ',count(*),' ', LOWER(occupation),'s.' )
from occupations
group by occupation
order by count(*), occupation;