select distinct city from station 
where city regexp '^[aeiouAEIOU].*[aeiouAEIOU]$' and LAT_N > 0 and LONG_W > 0;