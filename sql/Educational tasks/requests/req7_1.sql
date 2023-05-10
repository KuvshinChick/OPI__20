.mode box
.import city.csv city

.once req_7.csv
select timezone, count(*) as counter
from city
group by 1
order by 2 desc;

.once req_7.json
select timezone, count(*) as counter
from city
group by 1
order by 2 desc;