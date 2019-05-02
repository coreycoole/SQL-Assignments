SELECT
    start_station,
    COUNT(*)
FROM
    trips
GROUP by 1;
