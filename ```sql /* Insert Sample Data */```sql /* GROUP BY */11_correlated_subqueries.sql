```sql id="k9np0j"
/*
CORRELATED SUBQUERIES
*/


-- Products costing above category average

SELECT
product_name,
price

FROM products p

WHERE price>

(

SELECT AVG(price)

FROM products

WHERE category_id=
p.category_id

);




-- Customers spending above city average

SELECT
customer_name

FROM customers c

WHERE customer_id IN(

SELECT customer_id

FROM orders o

GROUP BY customer_id

HAVING SUM(total_amount)>
(

SELECT AVG(total_amount)

FROM orders

)

);




-- Suppliers with revenue above supplier average

SELECT
supplier_name

FROM suppliers s

WHERE supplier_id IN(

SELECT supplier_id

FROM products p

GROUP BY supplier_id

HAVING AVG(price)>
(

SELECT AVG(price)

FROM products

)

);




-- Orders larger than customer average

SELECT
order_id,
total_amount

FROM orders o

WHERE total_amount>

(

SELECT AVG(total_amount)

FROM orders

WHERE customer_id=
o.customer_id

);




-- Products with reviews above product average

SELECT
product_name

FROM products p

WHERE product_id IN(

SELECT product_id

FROM reviews r

GROUP BY product_id

HAVING AVG(rating)>
(

SELECT AVG(rating)

FROM reviews

WHERE product_id=
r.product_id

)

);



/*
Correlated Subquery

Outer row
↓

Inner query executes

for each row
*/
```
