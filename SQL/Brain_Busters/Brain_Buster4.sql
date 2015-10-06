# What store has most historical revenue!

SELECT
	sum(amount), s.store_id
FROM
	payment p JOIN 
		store s ON p.staff_id = s.manager_staff_id
GROUP BY
	2
;


# Make things clear! 
# ORDER BY
# as

SELECT
	sum(amount) as "revenue", s.store_id
FROM
	payment p JOIN 
		store s ON p.staff_id = s.manager_staff_id
GROUP BY
	2
ORDER BY
	1 desc
;