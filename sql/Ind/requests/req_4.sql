# Вывести средние продажи в миллионах долларов для консолей Xbox One, PlayStation4 и WiiU.

.import --csv vgsales.csv sale
.mode box

.once req_4.csv
SELECT Platform, AVG(Global_Sales/1000000) AS Avg_Sales_Millions
FROM sale
WHERE Platform IN ('XOne', 'PS4', 'WiiU')
GROUP BY Platform;




.once req_4.json
SELECT Platform, AVG(Global_Sales/1000000) AS Avg_Sales_Millions
FROM sale
WHERE Platform IN ('XOne', 'PS4', 'WiiU')
GROUP BY Platform;


