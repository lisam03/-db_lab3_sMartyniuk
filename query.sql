--Вивести загальну суму балів, яку отримала кожена команда
SELECT constructor_name, SUM(points) AS TotalPoints
	FROM constructors NATURAL JOIN results
GROUP BY constructor_name
ORDER BY TotalPoints ASC;

-- Вивести місце гонки та кожного переможця і команду яку вони представляють 
SELECT race_name, driver_surname AS winer, constructor_name
	FROM races NATURAL JOIN  results NATURAL JOIN  constructors NATURAL JOIN  drivers
	WHERE final_position = 1
ORDER BY race_name;

-- Вивести пілота з найбільшою кількістю балів
SELECT driver_forename, driver_surname, driver_number, points AS max_value
	FROM drivers NATURAL JOIN  results
	WHERE points = (SELECT MIN(points) FROM results)
ORDER BY driver_forename ASC;
















