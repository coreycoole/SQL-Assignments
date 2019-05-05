SELECT
	EXTRACT(MONTH FROM sfo_calendar.calender_date) as month,
	AVG(CAST(REPLACE(SUBSTR(sfo_calendar.price, 2), ',' ,'') as float)) as average_price
FROM
	sfo_calendar
WHERE
	price IS NOT NULL
GROUP BY
	1;