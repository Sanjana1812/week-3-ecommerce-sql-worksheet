```sql id="jv24qf"
/*
INDEXES + OPTIMIZATION
*/


-- Create index on product name

CREATE INDEX idx_product_name

ON products(product_name);




-- Create index on customer email

CREATE INDEX idx_customer_email

ON customers(email);




-- Check query performance

EXPLAIN ANALYZE

SELECT *

FROM products

WHERE product_name=
'iPhone';




-- Revenue report analysis

EXPLAIN ANALYZE

SELECT

SUM(total_amount)

FROM orders;




-- Optimize highest selling product query

EXPLAIN ANALYZE

SELECT

product_id,

SUM(quantity)

FROM order_items

GROUP BY product_id

ORDER BY SUM(quantity) DESC

LIMIT 1;




/*
INDEX
=
faster searching


EXPLAIN ANALYZE
=
see execution plan


Too many indexes
=
slower inserts
*/
```
