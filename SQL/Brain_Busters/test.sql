
# Find all inventory id for each film
select
	f.title, i.inventory_id
from 
	film f, inventory i
where
	f.film_id = i.film_id
;


# Find all rental id for each film according to inventory id 
# Since inventory_id in rental may occor multiple times, each time of appearence represnts a rent
# Can connect with inventory_id ()
select
	f.title, i.inventory_id, r.rental_id
from 
	film f, inventory i, rental r
where
	f.film_id = i.film_id
	and
	r.inventory_id = i.inventory_id
;

#Count and group

select
	f.title, count(r.rental_id)
from 
	film f, inventory i, rental r
where
	f.film_id = i.film_id
	and
	r.inventory_id = i.inventory_id
group by
	f.film_id
;