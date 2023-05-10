.import --csv city.csv city
.mode box

.once req_3.csv
select max(length(city)) from city;

.once req_3.json
select max(length(city)) from city;