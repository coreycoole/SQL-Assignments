SELECT
    trip_id,
    min(duration) as minimum_duration
FROM
    trips
GROUP by 1
ORDER BY min(duration) ASC;
