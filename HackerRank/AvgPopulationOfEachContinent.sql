select country.continent, 
floor(avg(city.population)) as AvgPopulation
from country join city on
CITY.CountryCode = COUNTRY.Code
group by country.continent