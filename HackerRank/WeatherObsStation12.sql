select distinct city from station
where UPPER(SUBSTR(city,1,1)) not in ('A','E','I','O','U') and 
UPPER(SUBSTR(city,length(city),1)) not in ('A','E','I','O','U') and 
LAT_N >0 and LONG_W >0 ;