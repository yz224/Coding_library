select
	customer.customer_id, customer.first_name, customer.last_name, address.address
from
	customer, address
;

# This is wrong, it will first give customer.id,first_name,last_name. and then assign them to one address
# And continue to all addresses are assigned

# Because don't know who has the address, need key to connect

select
	customer.customer_id, customer.first_name, customer.last_name, address.address
from
	customer, address
where
	customer.address_id = address.address_id
;