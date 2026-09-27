/*Day 4 — Aggregate Functions — COUNT, SUM, AVG, MIN, MAX

Business Context: Finance and Management want their first real numbers: totals, averages, and extremes across the business.

Questions*/

-- 1. Finance wants to know the total number of orders that have ever been placed.
SELECT COUNT(order_id) AS "Total Orders"
FROM orders;

-- 2. Finance wants to know the total revenue collected from all payments with a "Completed" status.
SELECT SUM(amount) AS "Total Revenue"
FROM payments
WHERE payment_status = 'Completed';

-- 3. The Product team wants to know the average unit price across all 
-- products currently in the catalog (excluding discontinued products).
SELECT ROUND(AVG(unit_price)) AS "Avg Unit Price"
FROM products
WHERE is_discontinued = false;

-- 4. Management wants to know the highest and lowest unit prices in the entire product catalog.
SELECT MAX(unit_price) AS "Highest Unit Price", MIN(unit_price) AS "Lowest Unit Price" 
FROM products;

-- 5. Customer Success wants to know how many unique customers are currently marked as "Business" segment.
SELECT COUNT(customer_id) AS "Business Segment Customers"
FROM customers
WHERE customer_segment='Business';

-- 6.Finance wants to know the average payment amount across all payment methods combined.
SELECT ROUND(AVG(amount)) AS "Avg Payment Amount"
FROM payments;

-- 7. Operations wants to know how many orders have a status of "Returned",
-- since this affects reverse logistics planning.
SELECT COUNT(order_id) AS "Total Returned Orders"
FROM orders
WHERE order_status='Returned';

-- 8. The Product team wants to know the total quantity of units
-- sold across all order_items (regardless of product).
SELECT * 
FROM payments;

-- 9. HR wants to know how many employees currently work in each
-- department count, and separately, the earliest hire date across all employees.
SELECT COUNT(employee_id) AS "No. of Employees", department
FROM employees
GROUP BY department;


-- 10. Finance wants to know the total shipping cost collected across all orders shipped to the "South" region.
SELECT SUM(shipping_cost) AS "Total Shipping Cost Of South Region"
FROM orders
WHERE shipping_region='South';