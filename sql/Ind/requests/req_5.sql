# Вывести количество продаж по регионам (Северная Америка, Европа, Япония и остальной мир) для игры "FIFA 17".

.import --csv vgsales.csv sale
.mode box

.once req_5.csv
SELECT Name, NA_Sales, EU_Sales, JP_Sales, Other_Sales
FROM sale
WHERE Name = 'FIFA 17';


.once req_5.json
SELECT Name, NA_Sales, EU_Sales, JP_Sales, Other_Sales
FROM sale
WHERE Name = 'FIFA 17';
