# Customer who haven't rent movie last month

SELECT 
	c.customer_id, c.first_name, c.last_name, left(r.rental_date, 7) 
FROM
	customer c, rental r
WHERE
	r.customer_id = c.customer_id
	AND
	left(r.rental_date, 7) = max(r.rental_date, 7)


# 1. Every customer's last rental rental_date
SELECT
	c.customer_id, c.first_name, c.last_name), max(r.rental_date) AS "Last_Rental_Date"
FROM 
	customer c, rental r
WHERE
	r.customer_id = c.customer_id
GROUP BY
	c.customer_id

# Improve with concat
SELECT
	c.customer_id, CONCAT(c.first_name, " ", c.last_name) AS "customer_name", max(r.rental_date) AS "Last_Rental_Date"
FROM 
	customer c, rental r
WHERE
	r.customer_id = c.customer_id
GROUP BY
	c.customer_id


# 2. Revenue of each month
SELECT
	sum(p.amount) AS "revenue", left(r.rental_date, 7) AS "rental_month"
FROM
	payment p, rental r
WHERE
	r.rental_id = p.rental_id
GROUP BY
	2










