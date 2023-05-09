# Вывести имя издателя и год выпуска игр, где количество платформ, для которых были выпущены игры, больше 3. Сортирует по имени издателя и году выпуска.

.import --csv vgsales.csv sale
.mode box

.once req_6.csv
SELECT Publisher, Year,
COUNT(DISTINCT Platform) as Platforms_Count 
FROM sale 
GROUP BY Publisher, Year HAVING Platforms_Count > 3 
ORDER BY Publisher, Year;


.once req_6.json
SELECT Publisher, Year,
COUNT(DISTINCT Platform) as Platforms_Count 
FROM sale 
GROUP BY Publisher, Year HAVING Platforms_Count > 3 
ORDER BY Publisher, Year;

