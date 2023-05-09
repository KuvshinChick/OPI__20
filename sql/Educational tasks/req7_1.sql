.mode box
select timezone, count(*) as counter
from city
group by 1
order by 2 desc;