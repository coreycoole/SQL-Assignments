SELECT
    trip_ID,
	duration
FROM
    trips
WHERE
	duration > 500
ORDER BY duration DESC;