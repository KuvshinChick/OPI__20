.mode csv
.import city.csv city
select max(length(city)) from city;