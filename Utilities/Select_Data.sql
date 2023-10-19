#SELECT
#FROM
#WHERE
#GROUP
#HAVING
#ORDER BY
#Aggregate function: COUNT()/SUM()/AVG()/MIN()/MAX()
#None-aggregate function: ABS()/MOD()/CEILING()/ADDDATE()/ISNULL()
# More: https://www.techonthenet.com/mysql/functions/index.php
  
SELECT var1, var2
FROM table1;

SELECT *
FROM table1;

SELECT var1, var2
FROM table1
WHERE var1='value1' AND var2='value2';

SELECT SUM(var2)
FROM table1;
  
#Do the summation of var2 per categorical level in var1
SELECT var1, SUM(var2)
FROM table1
GROUP BY var1;

SELECT var1, SUM(var2) AS sum_var2 #Add an alias
FROM table1
GROUP BY var1;

#HAVING filters the results of an aggregated function
SELECT var1, SUM(var2) AS sum_var2
FROM table1
GROUP BY var1
HAVING SUM(var2) <= 200; 

SELECT var1, var2
FROM table1
ORDER BY var2;

SELECT var1, var2
FROM table1
ORDER BY var2 DESC;

#Make values in each cell of the column `music_name` all uppercase
SELECT UCASE(music_name) AS uppercase_music_name
FROM table2;

#Take average of 2 columns
SELECT (var1 + var2) / 2 AS avg_var12
FROM table2;

#If-else: recode values within a column
SELECT IFF(var1='Yes', 1, 0) AS var1_01
FROM table2;

#SELECT ABS(30 * -1);

