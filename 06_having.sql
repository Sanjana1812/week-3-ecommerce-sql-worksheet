```sql id="kx5gq3"
/*
HAVING
*/


-- Categories having more than 20 products

SELECT category_id,
COUNT(*)

FROM products

GROUP BY category_id

HAVING COUNT(*) > 20;




-- Suppliers supplying more than 10 products

SELECT supplier_id,
COUNT(*)

FROM products

GROUP BY supplier_id

HAVING COUNT(*) > 10;




-- Customers having more than 5 orders

SELECT customer_id,
COUNT(*)

FROM orders

GROUP BY customer_id

HAVING COUNT(*) > 5;




-- Products having average rating above 4

SELECT product_id,
AVG(rating)

FROM reviews

GROUP BY product_id

HAVING AVG(rating) > 4;




-- Cities with more than 50 customers

SELECT city,
COUNT(*)

FROM addresses

GROUP BY city

HAVING COUNT(*) > 50;



/*
WHERE → filters rows

HAVING → filters groups
*/
```
