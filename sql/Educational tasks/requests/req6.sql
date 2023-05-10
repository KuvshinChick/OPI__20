.mode box
.import city.csv city

.once req_6.csv
SELECT DISTINCT address
FROM city
WHERE city != 'Самара'
ORDER BY (ABS(geo_lat - (SELECT geo_lat FROM city WHERE city = 'Самара')) + ABS(geo_lon - (SELECT geo_lon FROM city WHERE city = 'Самара')))
LIMIT 5;

.once req_6.json
SELECT DISTINCT address
FROM city
WHERE city != 'Самара'
ORDER BY (ABS(geo_lat - (SELECT geo_lat FROM city WHERE city = 'Самара')) + ABS(geo_lon - (SELECT geo_lon FROM city WHERE city = 'Самара')))
LIMIT 5;