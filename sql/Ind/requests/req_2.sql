# Вывести суммарные продажи в Европе и Северной Америке для игры "Grand Theft Auto V".

.import --csv vgsales.csv sale
.mode box

.once req_2.csv
SELECT SUM(EU_Sales) AS Europe_Sales, SUM(NA_Sales) AS North_America_Sales
FROM sale
WHERE Name = 'Grand Theft Auto V';


.once req_2.json
SELECT SUM(EU_Sales) AS Europe_Sales, SUM(NA_Sales) AS North_America_Sales
FROM sale
WHERE Name = 'Grand Theft Auto V';
