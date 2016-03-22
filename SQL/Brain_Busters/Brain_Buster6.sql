# Number of distinct film rented each month

SELECT
	left(r.rental_date, 7) AS "rental_month", count(distinct(f.film_id)) AS 'Num_of_unique_rent'
FROM 
	rental r, inventory i, film f
WHERE
	r.inventory_id = i.inventory_id 
	AND
	i.film_id = f.film_id
GROUP BY
	1

# Just use distinct
# Improve: No need to use film data, id already in inventory 
# 		   Add total rent, percentage
#		   No need for () for distinct

SELECT
	left(r.rental_date, 7) AS "rental_month", count(distinct r.rental_id) AS "Total_rental",
	count(distinct i.film_id) AS 'Num_of_unique_rent', count(distinct r.rental_id) / count(distinct i.film_id) AS "avg_rent_r"
FROM 
	rental r, inventory i
WHERE
	r.inventory_id = i.inventory_id 
GROUP BY
	1