select 	a.first_name, 	a.last_name, 	a.city , b.order_details from customers as a left join orders as b 
ON a.id = b.cust_id
order by a.first_name, b.order_details


/**
Find the details of each customer regardless of whether the customer made an order.
Output the customer's first name, last name, and the city along with the order details.
You may have duplicate rows in your results due to a customer ordering several of the same items.
Sort records based on the customer's first name and the order details in ascending order.

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
