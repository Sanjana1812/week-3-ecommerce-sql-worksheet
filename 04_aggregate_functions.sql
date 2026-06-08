```sql
/*
Aggregate Functions
*/


-- Total customers

SELECT COUNT(*)
FROM customers;



-- Total products

SELECT COUNT(*)
FROM products;



-- Average product price

SELECT AVG(price)
FROM products;



-- Highest priced product

SELECT MAX(price)
FROM products;



-- Lowest priced product

SELECT MIN(price)
FROM products;



-- Total revenue generated

SELECT SUM(total_amount)
FROM orders;



-- Total orders placed

SELECT COUNT(*)
FROM orders;



-- Total stock available

SELECT SUM(stock_quantity)
FROM products;



-- Average order value

SELECT AVG(total_amount)
FROM orders;



-- Total payment received

SELECT SUM(amount)
FROM payments;
```
