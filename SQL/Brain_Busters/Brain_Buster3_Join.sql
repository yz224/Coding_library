select
	count(f.title), f.title, l.name, c.name
from
	film f, film_category fc, language l, category c
where
	f.film_id = fc.film_id
	and
	fc.category_id = c.category_id
	and
	f.language_id = l.language_id
group by
	c.name
;

# Join version
# Only select those in common on key. 
# If multiple 副 key, then duplicate those don't have multiple

select
	count(f.title), f.title, l.name, c.name
from
	film f join 
		film_category fc on f.film_id = fc.film_id

	join
		category c on fc.category_id = c.category_id

	join 
		language l on f.language_id = l.language_id
group by
	c.name
;