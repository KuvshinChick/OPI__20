select timezone, count(*) as city_count
from city
group by 1
order by 1 asc;