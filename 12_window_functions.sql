```sql
/*
WINDOW FUNCTIONS
*/


-- Rank products by revenue

SELECT
product_id,
SUM(quantity*unit_price),

RANK()
OVER(

ORDER BY
SUM(quantity*unit_price)
DESC

)

AS revenue_rank

FROM order_items

GROUP BY product_id;




-- Rank customers by spending

SELECT
customer_id,

SUM(total_amount),

RANK()

OVER(

ORDER BY
SUM(total_amount)
DESC

)

AS spending_rank

FROM orders

GROUP BY customer_id;




-- Rank suppliers by sales

SELECT
supplier_id,

SUM(price),

DENSE_RANK()

OVER(

ORDER BY
SUM(price)
DESC

)

AS supplier_rank

FROM products

GROUP BY supplier_id;




-- Top 3 products per category

SELECT *

FROM(

SELECT
product_name,

category_id,

ROW_NUMBER()

OVER(

PARTITION BY category_id

ORDER BY price DESC

)

AS rank

FROM products

)t

WHERE rank<=3;




-- Running total revenue

SELECT

order_date,

total_amount,

SUM(total_amount)

OVER(

ORDER BY order_date

)

AS running_total

FROM orders;




-- Highest order per customer

SELECT *

FROM(

SELECT
customer_id,

order_id,

total_amount,

ROW_NUMBER()

OVER(

PARTITION BY customer_id

ORDER BY total_amount DESC

)

AS rank

FROM orders

)t

WHERE rank=1;




/*
OVER()
=
window

PARTITION BY
=
group but keep rows

RANK()
=
ranking
*/
```
