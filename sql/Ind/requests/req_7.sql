# Вывести количество продаж для каждого издателя, сортируя их по убыванию общей продажи.

.import --csv vgsales.csv sale
.mode box

.once req_7.csv
SELECT Publisher, SUM(Global_Sales) as Total_Sales 
FROM sale 
GROUP BY Publisher 
ORDER BY Total_Sales DESC;

.once req_7.json
SELECT Publisher, SUM(Global_Sales) as Total_Sales 
FROM sale 
GROUP BY Publisher 
ORDER BY Total_Sales DESC;
