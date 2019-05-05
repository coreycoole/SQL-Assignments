SELECT 
	COUNT(CASE WHEN available = 'f' then 1 END) as vacancy_count,
	EXTRACT(MONTH FROM sfo_calendar.calender_date) as month
FROM
	sfo_calendar
JOIN 
	sfo_listings
ON
  sfo_listings.id = sfo_calendar.listing_id
GROUP BY 2
ORDER BY vacancy_count DESC;