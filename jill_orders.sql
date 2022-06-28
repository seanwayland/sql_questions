select * from customers;

select a.first_name,  b.order_date, b.order_details, b.total_order_cost
FROM customers as a join orders as b 
ON a.id = b.cust_id
WHERE a.first_name IN ('Jill',
                               'Eva')
order by b.cust_id;


/***
Find order details made by Jill and Eva.
Consider the Jill and Eva as first names of customers.
Output the order date, details and cost along with the first name.
Order records based on the customer id in ascending order

customers 

id:
int
first_name:
varchar
last_name:
varchar
city:
varchar
address:
varchar
phone_number:
varchar

orders

id:
int
cust_id:
int
order_date:
datetime
order_details:
varchar
total_order_cost:
int

/**
