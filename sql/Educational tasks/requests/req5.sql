.mode csv
.import city.csv city

.once req_4.csv
select timezone, count(*) as city_count
from city
group by 1
order by 1 asc;

.once req_4.json
select timezone, count(*) as city_count
from city
group by 1
order by 1 asc;