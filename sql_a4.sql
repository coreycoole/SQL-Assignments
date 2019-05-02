SELECT
	date,
	max(maxtemperaturef) as max_temp,
	zip
FROM
    weather
GROUP BY 1,3
ORDER BY max(maxtemperaturef) DESC;
