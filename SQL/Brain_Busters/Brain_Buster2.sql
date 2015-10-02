select
	rating, rental_rate, count(rental_rate)
from
	film
where
	rating = 'R'
group by
	rental_rate


####################################################################################

select
	rating, rental_rate, count(film_id)
							# Count by film_id is safest here
from
	film
where
	rating = 'R'
group by
	1,2

# Actually can do group by 1,2 and more groups criteria come, we have more groups show up