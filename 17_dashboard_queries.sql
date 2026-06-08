```sql id="n7w6pi"
/*
BUSINESS DASHBOARD QUERIES
*/


-- Top 10 Products

SELECT

product_id,

SUM(quantity)

AS total_sales

FROM order_items

GROUP BY product_id

ORDER BY total_sales DESC

LIMIT 10;





-- Customer Lifetime Value

SELECT

customer_id,

SUM(total_amount)

AS lifetime_value

FROM orders

GROUP BY customer_id

ORDER BY lifetime_value DESC;





-- Repeat Customers

SELECT

customer_id,

COUNT(*)

AS total_orders

FROM orders

GROUP BY customer_id

HAVING COUNT(*)>1;





-- Monthly Revenue Growth

SELECT

DATE_TRUNC(
'month',
order_date
)

AS month,

SUM(total_amount)

AS revenue

FROM orders

GROUP BY month

ORDER BY month;





-- Inventory Status

SELECT

product_name,

stock_quantity

FROM products

ORDER BY stock_quantity ASC;





-- Supplier Performance

SELECT

supplier_id,

COUNT(*)

AS products_supplied

FROM products

GROUP BY supplier_id;





-- Revenue Forecast Dataset

SELECT

DATE_TRUNC(
'month',
order_date
),

SUM(total_amount)

FROM orders

GROUP BY 1;





-- Complete KPI Dashboard

WITH dashboard AS(

SELECT

COUNT(*) AS total_orders,

SUM(total_amount) AS revenue,

AVG(total_amount) AS avg_order

FROM orders

)

SELECT *

FROM dashboard;



/*
Business SQL

Reporting

KPIs

Analytics
*/
```
