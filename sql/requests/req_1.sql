SELECT Platform, count(*) as counter
from sale
group by 1
order by 2 asc;