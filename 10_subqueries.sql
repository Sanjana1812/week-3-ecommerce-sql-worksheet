```sql id="2w7y5k"
/*
SUBQUERIES
*/


-- Highest selling product

SELECT product_name

FROM products

WHERE product_id=(

SELECT product_id

FROM order_items

GROUP BY product_id

ORDER BY SUM(quantity) DESC

LIMIT 1

);




-- Second highest selling product

SELECT product_name

FROM products

WHERE product_id=(

SELECT product_id

FROM order_items

GROUP BY product_id

ORDER BY SUM(quantity) DESC

OFFSET 1

LIMIT 1

);




-- Third highest selling product

SELECT product_name

FROM products

WHERE product_id=(

SELECT product_id

FROM order_items

GROUP BY product_id

ORDER BY SUM(quantity) DESC

OFFSET 2

LIMIT 1

);




-- Customer with highest spending

SELECT customer_name

FROM customers

WHERE customer_id=(

SELECT customer_id

FROM orders

GROUP BY customer_id

ORDER BY SUM(total_amount) DESC

LIMIT 1

);




-- Customers spending above average

SELECT customer_name

FROM customers

WHERE customer_id IN(

SELECT customer_id

FROM orders

GROUP BY customer_id

HAVING AVG(total_amount)>
(
SELECT AVG(total_amount)
FROM orders
)

);




-- Products priced above average

SELECT product_name

FROM products

WHERE price>

(

SELECT AVG(price)

FROM products

);




-- Supplier supplying highest number of products

SELECT supplier_name

FROM suppliers

WHERE supplier_id=(

SELECT supplier_id

FROM products

GROUP BY supplier_id

ORDER BY COUNT(*) DESC

LIMIT 1

);




-- Products never purchased

SELECT product_name

FROM products

WHERE product_id NOT IN(

SELECT product_id

FROM order_items

);



/*
Subquery
=
query inside query

Inner query
↓

runs first

Outer query
↓

uses result
*/
```
