WITH 
	is_rainy 
AS
(
SELECT
	date
FROM 
	weather
WHERE 
	events = 'Rain' or events = 'Rain_ThunderStorm'
GROUP BY 1
)
,
	rainy_trips 
AS 
(
SELECT
	trip_id,
	duration,
	date(start_date) as date
FROM
	trips
JOIN
	is_rainy
ON is_rainy.date = date
ORDER BY duration DESC)

SELECT
	date,
	max(duration) as longest_trip
FROM
	rainy_trips
GROUP BY 1
ORDER BY longest_trip DESC;
	