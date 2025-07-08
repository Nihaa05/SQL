select distinct city from station where city not regexp
'^[aeiouAEIOU]'
or city not regexp '[aeiouAEIOU]$' and LAT_N > 0 and LONG_W > 0 