```sql
/*
RIGHT JOIN + FULL OUTER JOIN
*/


-- All products and corresponding reviews

SELECT
products.product_name,
reviews.rating

FROM reviews

RIGHT JOIN products

ON reviews.product_id=
products.product_id;




-- All customers and their orders

SELECT
customers.customer_name,
orders.order_id

FROM customers

FULL OUTER JOIN orders

ON customers.customer_id=
orders.customer_id;




-- All suppliers and products

SELECT
suppliers.supplier_name,
products.product_name

FROM suppliers

FULL OUTER JOIN products

ON suppliers.supplier_id=
products.supplier_id;




-- All categories and products

SELECT
categories.category_name,
products.product_name

FROM categories

FULL OUTER JOIN products

ON categories.category_id=
products.category_id;




-- All orders and shipments

SELECT
orders.order_id,
shipments.shipment_status

FROM orders

FULL OUTER JOIN shipments

ON orders.order_id=
shipments.order_id;




/*
RIGHT JOIN
=
keep right table


FULL OUTER JOIN
=
keep both tables


NULL
=
no matching row
*/
```
