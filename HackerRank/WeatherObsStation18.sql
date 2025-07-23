select round(P1 + P2,4)
from (select (max(lat_n)-min(lat_n)) P1, (max(long_w)-min(long_w)) P2
     from station) dist