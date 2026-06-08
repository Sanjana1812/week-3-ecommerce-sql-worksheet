
/*
E-Commerce Management System
Schema Creation
*/


                                    -- Customers table
                                    -- Stores customer information

CREATE TABLE customers(

customer_id SERIAL PRIMARY KEY,

customer_name VARCHAR(100),

email VARCHAR(100),

phone VARCHAR(20),

registration_date DATE

);



                                          -- Addresses table
                                          -- One customer can have multiple addresses

CREATE TABLE addresses(

address_id SERIAL PRIMARY KEY,

customer_id INT,

address_type VARCHAR(50),

city VARCHAR(50),

state VARCHAR(50),

pincode VARCHAR(10),

FOREIGN KEY(customer_id)
REFERENCES customers(customer_id)

);



                          -- Categories table
                          -- parent_category_id creates subcategories

CREATE TABLE categories(

category_id SERIAL PRIMARY KEY,

category_name VARCHAR(100),

parent_category_id INT,

FOREIGN KEY(parent_category_id)
REFERENCES categories(category_id)

);



/*
Relationships

Customer
↓

Addresses

Category
↓

Sub Category
*/
