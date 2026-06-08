```sql
/*
Basic Queries
*/


-- Display all customers

SELECT *
FROM customers;



-- Display products costing above 5000

SELECT *
FROM products
WHERE price > 5000;



-- Display products with stock less than 10

SELECT *
FROM products
WHERE stock_quantity < 10;



-- Display all suppliers

SELECT *
FROM suppliers;



-- Display completed orders

SELECT *
FROM orders
WHERE order_status='Completed';



-- Display orders placed this month

SELECT *
FROM orders
WHERE DATE_TRUNC('month',order_date)
=
DATE_TRUNC('month',CURRENT_DATE);



-- Display customers registered in last 30 days

SELECT *
FROM customers
WHERE registration_date
>=
CURRENT_DATE - INTERVAL '30 days';



-- Display products sorted by price descending

SELECT *
FROM products
ORDER BY price DESC;



-- Display top 10 expensive products

SELECT *
FROM products
ORDER BY price DESC
LIMIT 10;



-- Display active shipments

SELECT *
FROM shipments
WHERE shipment_status='Active';
```
