SELECT reservations.*, properties.*, avg(property_reviews.rating) 
FROM properties JOIN reservations ON property_id = properties.id
JOIN property_reviews ON reservation_id = reservations.id
WHERE reservations.guest_id = 4
AND end_date < now()::date
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date DESC
LIMIT 10;