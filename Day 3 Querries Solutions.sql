/*Day 3 — ORDER BY & Sorting Data

Business Context: Teams now want their filtered results presented in a meaningful order to prioritize action.

Questions*/

-- 1. Sales wants to see all products sorted from the highest
-- unit price to the lowest, to identify the premium end of the catalog.
SELECT product_id, product_name, unit_price
FROM products
ORDER BY unit_price DESC;

-- 2. Customer Success wants a list of all customers sorted by
-- signup date, oldest to newest, to recognize the company's longest-standing customers.
SELECT CONCAT(first_name,' ', last_name) AS "Full Name" , city, region, signup_date
FROM customers
ORDER BY signup_date ASC;

-- 3. Operations wants all orders sorted first by order status,
-- and within each status, by order date (most recent first).
SELECT *
FROM orders
ORDER BY order_status , order_date DESC;

-- 4. Finance wants payments sorted by amount in descending order, but only
-- those with a "Completed" status, to see the largest completed transactions first.
SELECT *
FROM payments
WHERE payment_status = 'Completed'
ORDER BY amount DESC;

-- 5. The Product team wants to see all reviews sorted by rating from lowest to highest,
-- so they can prioritize investigating the most negative feedback first.
SELECT * 
FROM reviews
ORDER BY rating ASC;

-- 6. HR wants employees sorted by hire date, earliest to most recent, within each department.
SELECT *
FROM employees
ORDER BY hire_date ASC;

-- 7. Sales wants a list of all "Business" segment customers
-- sorted alphabetically by last name, then first name.
SELECT first_name, last_name, email, phone
FROM customers
ORDER BY last_name, first_name DESC;

-- 8. Operations wants orders sorted by shipping cost from
-- highest to lowest, limited to orders shipped to the "East" region.
SELECT *
FROM orders
WHERE shipping_region = 'East'
ORDER BY shipping_cost DESC;

-- 9. The Product team wants products sorted by stock quantity from lowest to highest,
-- so they can see which items are at risk of running out first (excluding discontinued products).
SELECT * 
FROM products
ORDER BY stock_quantity ASC;

-- 10. Marketing wants customers sorted by region alphabetically, and within each region,
-- by signup date from newest to oldest, to prepare a tiered outreach list.
SELECT * 
FROM customers 
ORDER BY region DESC, signup_date ASC;