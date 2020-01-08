SELECT properties.*, reservations.*, avg(property_reviews.rating) as average_rating
FROM reservations
JOIN property_reviews ON property_reviews.reservation_id = reservations.id
JOIN properties ON reservations.property_id = properties.id
WHERE reservations.guest_id = 5 AND reservations.end_date < now()::date
GROUP BY properties.id, reservations.id
ORDER BY (now()::date - reservations.start_date);
LIMIT 10;

