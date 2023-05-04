select Publisher, count()
from sale
group by Publisher
order by count(*) desc;
