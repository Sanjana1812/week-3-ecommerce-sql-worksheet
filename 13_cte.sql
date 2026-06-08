```sql id="5tngbz"
/*
CTE
*/


-- Category wise revenue

WITH category_revenue AS(

SELECT

products.category_id,

SUM(
order_items.quantity
*
order_items.unit_price
)

AS revenue

FROM order_items

INNER JOIN products

ON order_items.product_id=
products.product_id

GROUP BY products.category_id

)

SELECT *
FROM category_revenue;




-- Customer spending summary

WITH customer_spending AS(

SELECT

customer_id,

SUM(total_amount)

AS total_spent

FROM orders

GROUP BY customer_id

)

SELECT *
FROM customer_spending;




-- Top 10 customers

WITH customer_rank AS(

SELECT

customer_id,

SUM(total_amount)

AS spending

FROM orders

GROUP BY customer_id

)

SELECT *

FROM customer_rank

ORDER BY spending DESC

LIMIT 10;




-- Top products

WITH product_sales AS(

SELECT

product_id,

SUM(quantity)

AS sales

FROM order_items

GROUP BY product_id

)

SELECT *

FROM product_sales

ORDER BY sales DESC;




-- Supplier performance

WITH supplier_report AS(

SELECT

supplier_id,

COUNT(*)

AS total_products

FROM products

GROUP BY supplier_id

)

SELECT *
FROM supplier_report;



/*
WITH
=
temporary table

CTE
=
clean complex queries
*/
```
