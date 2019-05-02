WITH
	rainy_trips
as (
SELECT
	date
FROM
	weather
WHERE
	weather.events = 'Rain' OR weather.events = 'Rain-Thunderstorm'
group by 1
)	

SELECT
	trip_id,
	duration,
	date(start_date) as date
FROM
	trips
JOIN	
	rainy_trips
ON 
	rainy_trips.date = date 
ORDER BY duration DESC
LIMIT 3