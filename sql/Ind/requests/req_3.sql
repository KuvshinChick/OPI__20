# Вывести все игры, выпущенные для PlayStation 2, отсортированные по году выпуска в порядке убывания.

.import --csv vgsales.csv sale
.mode box

.once req_3.csv
SELECT *
FROM sale
WHERE Platform = 'PS2'
ORDER BY Year DESC;



.once req_3.json
SELECT *
FROM sale
WHERE Platform = 'PS2'
ORDER BY Year DESC;
