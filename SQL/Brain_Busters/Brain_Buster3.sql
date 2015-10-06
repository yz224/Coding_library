# Find number of films of each category, and report its language

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


