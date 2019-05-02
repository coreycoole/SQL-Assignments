SELECT
    end_station,
	AVG(duration) as average_duration
FROM
    trips
GROUP by end_station;
