# Вывести общее кол-во игр для каждой платформы

.import --csv vgsales.csv sale
.mode box

.once req_1.csv
SELECT Platform, count(*) as counter
from sale
group by 1
order by 2 asc;


.once req_1.json
SELECT Platform, count(*) as counter
from sale
group by 1
order by 2 asc;