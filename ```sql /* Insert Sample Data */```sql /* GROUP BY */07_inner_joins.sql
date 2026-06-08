```sql
/*
INNER JOINS
*/


-- Customer names with order details

SELECT
customers.customer_name,
orders.order_id,
orders.total_amount

FROM customers

INNER JOIN orders

ON customers.customer_id=
orders.customer_id;




-- Order details with products

SELECT
orders.order_id,
products.product_name

FROM order_items

INNER JOIN orders

ON order_items.order_id=
orders.order_id

INNER JOIN products

ON order_items.product_id=
products.product_id;




-- Product names with category names

SELECT
products.product_name,
categories.category_name

FROM products

INNER JOIN categories

ON products.category_id=
categories.category_id;




-- Product names with supplier names

SELECT
products.product_name,
suppliers.supplier_name

FROM products

INNER JOIN suppliers

ON products.supplier_id=
suppliers.supplier_id;




-- Reviews with customer names

SELECT
customers.customer_name,
reviews.rating

FROM reviews

INNER JOIN customers

ON reviews.customer_id=
customers.customer_id;




-- Payment details with customer names

SELECT
customers.customer_name,
payments.amount

FROM orders

INNER JOIN customers

ON orders.customer_id=
customers.customer_id

INNER JOIN payments

ON orders.order_id=
payments.order_id;




-- Shipment details with order details

SELECT
shipments.shipment_status,
orders.order_id

FROM shipments

INNER JOIN orders

ON shipments.order_id=
orders.order_id;




-- Cart items with product names

SELECT
products.product_name,
cart_items.quantity

FROM cart_items

INNER JOIN products

ON cart_items.product_id=
products.product_id;




-- Wishlist items with product names

SELECT
customers.customer_name,
products.product_name

FROM wishlist

INNER JOIN customers

ON wishlist.customer_id=
customers.customer_id

INNER JOIN products

ON wishlist.product_id=
products.product_id;




-- Customer addresses with customer names

SELECT
customers.customer_name,
addresses.city

FROM customers

INNER JOIN addresses

ON customers.customer_id=
addresses.customer_id;



/*
INNER JOIN
=
show only matching rows
*/
```
