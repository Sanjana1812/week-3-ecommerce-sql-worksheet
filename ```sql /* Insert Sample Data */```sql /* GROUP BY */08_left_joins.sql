```sql id="fbf0qf"
/*
LEFT JOINS
*/


-- Customers who never placed orders

SELECT
customers.customer_name

FROM customers

LEFT JOIN orders

ON customers.customer_id=
orders.customer_id

WHERE orders.order_id IS NULL;




-- Products never ordered

SELECT
products.product_name

FROM products

LEFT JOIN order_items

ON products.product_id=
order_items.product_id

WHERE order_items.order_item_id IS NULL;




-- Products with no reviews

SELECT
products.product_name

FROM products

LEFT JOIN reviews

ON products.product_id=
reviews.product_id

WHERE reviews.review_id IS NULL;




-- Customers without addresses

SELECT
customers.customer_name

FROM customers

LEFT JOIN addresses

ON customers.customer_id=
addresses.customer_id

WHERE addresses.address_id IS NULL;




-- Orders without payments

SELECT
orders.order_id

FROM orders

LEFT JOIN payments

ON orders.order_id=
payments.order_id

WHERE payments.payment_id IS NULL;



/*
LEFT JOIN
=
keep left table

IS NULL
=
find missing matches
*/
```
