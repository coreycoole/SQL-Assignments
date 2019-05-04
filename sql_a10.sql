SELECT
  start_station,
  dockcount,
  count(start_station) as trip_count
FROM
  trips
JOIN
  stations
ON
  stations.name = trips.start_station
GROUP BY 1, 2
ORDER BY 2 DESC