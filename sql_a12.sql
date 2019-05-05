WITH
	listing_count
as (
SELECT 
	listing_id,
	neighbourhood,
	COUNT(CASE WHEN available = 'f' then 1 END) as vacancy_count
FROM
	sfo_calendar
JOIN 
	sfo_listings
ON
  sfo_listings.id = sfo_calendar.listing_id
GROUP BY 1,2
ORDER BY vacancy_count DESC
)
SELECT 
	neighbourhood,
	COUNT(*) as neighbourhood_count
FROM 
	listing_count
GROUP BY 1
ORDER BY neighbourhood_count DESC;