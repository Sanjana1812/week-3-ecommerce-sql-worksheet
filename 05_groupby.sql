```sql
/*
GROUP BY
*/


-- Number of products category-wise

SELECT category_id,
COUNT(*)
FROM products
GROUP BY category_id;



-- Total sales category-wise

SELECT product_id,
SUM(quantity)
FROM order_items
GROUP BY product_id;



-- Total revenue supplier-wise

SELECT supplier_id,
SUM(price)
FROM products
GROUP BY supplier_id;



-- Customer count city-wise

SELECT city,
COUNT(*)
FROM addresses
GROUP BY city;



-- Order count status-wise

SELECT order_status,
COUNT(*)
FROM orders
GROUP BY order_status;



-- Average rating product-wise

SELECT product_id,
AVG(rating)
FROM reviews
GROUP BY product_id;



-- Total products supplier-wise

SELECT supplier_id,
COUNT(*)
FROM products
GROUP BY supplier_id;



-- Shipment count status-wise

SELECT shipment_status,
COUNT(*)
FROM shipments
GROUP BY shipment_status;



-- Total payments method-wise

SELECT payment_method,
SUM(amount)
FROM payments
GROUP BY payment_method;



-- Monthly sales report

SELECT DATE_TRUNC('month',order_date),
SUM(total_amount)
FROM orders
GROUP BY DATE_TRUNC('month',order_date);
```
