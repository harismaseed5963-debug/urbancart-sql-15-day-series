-- # Day 1 — SELECT, FROM & Basic Query Structure
 
-- **Business Context:**
-- It's your first day as a Data Analyst at UrbanCart. Before diving into deep analysis, several teams just want quick,
-- clean views of the raw data they rely on day to day.
 
-- ### Questions
 
-- 1. The Customer Success team wants a simple directory of customers.
-- Retrieve each customer's first name, last name, and email address.
SELECT first_name, last_name, email 
FROM customers;


-- 2. Management wants a combined "Full Name" column (first and last name together) for every customer,
-- so it displays as one field instead of two.
SELECT CONCAT(first_name,' ',last_name)
AS full_name
FROM customers;


-- 3. The Marketing team is preparing a product catalog draft and
-- needs the product name, unit price, and supplier name for every product.
SELECT product_name, unit_price, supplier_name
FROM products;


-- 4. The Operations team wants a list of every order showing its order ID, order date, and current order status.
SELECT order_id, order_date, order_status
FROM  orders;


-- 5. HR wants a list of all employees, showing their full name, department,
-- and region, with clear column headers ("Employee Name", "Department", "Region").
SELECT CONCAT(first_name, ' ', last_name) AS Employee_Name, department, region
FROM employees;


-- 6. The Finance team wants to see every payment record with its payment method and amount,
-- using more descriptive column names for the report.
SELECT payment_method, amount
FROM payments;


-- 7. The Product team wants a list of all product categories along with their descriptions.
SELECT category_name, category_description
FROM categories;



-- 8. Customer Success wants a list of customer IDs, cities, and regions to help plan a regional outreach campaign.
SELECT customer_id, city, region
FROM customers;


-- 9. Operations wants to see every order along with its shipping region and shipping cost,
-- sorted logically for their internal report (columns only — no filtering needed yet).
SELECT order_id, shipping_region, shipping_cost 
FROM orders;


-- 10. The Product team wants a quick list of every review's rating and review text,
-- along with the product ID it belongs to,to get a general feel for the kind of feedback being submitted.
SELECT product_id, rating As review_rating, review_text
FROM reviews;


---
