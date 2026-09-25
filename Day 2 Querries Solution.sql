/*Day 2 — WHERE & Filtering Data

Business Context: Now that teams have basic access to the data, they're starting to ask for specific slices of it rather than everything at once.

Questions*/

-- 1. Customer Success wants to contact all customers based
-- in the "North" region to announce a regional promotion.
SELECT * 
FROM CUSTOMERS
WHERE region='North';

-- 2. Finance wants to review all payments that have a
-- status of "Failed" so they can follow up with affected customers.
SELECT *
FROM payments
WHERE payment_status='Failed';

-- 3. Marketing wants to build a re-engagement campaign
-- targeting customers who signed up before January 1, 2024.
SELECT *
FROM customers
WHERE signup_date<'2024-01-01';

-- 4. The Sales team wants to see all orders with a status of
-- either "Cancelled" or "Returned" to understand recent losses.
SELECT *
FROM orders
WHERE order_status IN ('Cancelled','Returned');

-- 5. The Product team wants a list of all products priced
-- between $20 and $100 to plan a mid-range pricing promotion.
SELECT *
FROM products
WHERE unit_price BETWEEN 20 AND 100;

-- 6. Operations wants to find all orders that do not yet have an
-- assisting employee assigned (i.e., were fully self-service).
SELECT *
FROM orders
WHERE employee_id IS NULL;

-- 7. Customer Success wants to identify all "Business" segment customers
-- who are currently inactive, since these are high-value accounts that may need re-engagement.
SELECT *
FROM customers
WHERE is_active = 'false';

-- 8. The Product team wants to find all products from suppliers whose
-- name contains the word "Tech" to review an upcoming vendor consolidation.
SELECT 
FROM 
WHERE

-- 9. Finance wants to see all payments made using "Cash on Delivery"
-- with an amount greater than $150, since these carry higher collection risk.
SELECT * 
FROM payments
WHERE payment_method = 'Cash on Delivery'
AND amount > 150;

-- 10. Operations wants to identify orders placed in the "West" region
-- with a shipping cost of $0, to check whether a free-shipping promotion is being applied correctly.
SELECT *
FROM orders
WHERE shipping_region = 'West' AND shipping_cost IS NULL;