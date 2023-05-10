.import --csv city.csv city
.mode box

.timer on
select count(*) from city;
