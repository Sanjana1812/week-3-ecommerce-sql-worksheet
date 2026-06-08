
/*
Insert Sample Data
*/


                                                  -- Customers

INSERT INTO customers
(customer_name,email,phone,registration_date)

VALUES

('Sanjana','san@gmail.com','9876543210','2026-06-01'),

('Maggie','maggie@gmail.com','9876543211','2026-06-03'),

('Ruby','ruby@gmail.com','9876543212','2026-06-05');




                                                    -- Addresses

INSERT INTO addresses
(customer_id,address_type,city,state,pincode)

VALUES

(1,'Home','Bangalore','Karnataka','560001'),

(2,'Work','Hyderabad','Telangana','500001'),

(3,'Home','Chennai','Tamil Nadu','600001');


                                              -- Categories

INSERT INTO categories
(category_name,parent_category_id)

VALUES

('Electronics',NULL),

('Mobiles',1),

('Laptops',1);


                              -- View inserted data

SELECT * FROM customers;

SELECT * FROM addresses;

SELECT * FROM categories;

