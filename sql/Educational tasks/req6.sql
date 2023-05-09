SELECT DISTINCT address
FROM city
WHERE city != 'Самара'
ORDER BY (ABS(geo_lat - (SELECT geo_lat FROM city WHERE city = 'Самара')) + ABS(geo_lon - (SELECT geo_lon FROM city WHERE city = 'Самара')))
LIMIT 5;