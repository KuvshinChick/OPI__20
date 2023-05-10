.mode csv
.separator |
.headers on

.once req_7_2.csv
select timezone, count(*) as counter
from city
group by 1
order by 2 desc;

.once req_7_2.json
select timezone, count(*) as counter
from city
group by 1
order by 2 desc;