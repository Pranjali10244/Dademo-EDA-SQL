USE dademo;
# Use database & read Tables:
-- Reading all tables:
SELECT*FROM customers;
SELECT*FROM orders;
SELECT*FROM orderitems;
SELECT*FROM products;

-- How many customers?
SELECT COUNT(*) AS total_customers FROM Customers;

-- How many orders have shipped (shipped_date NOT NULL)?
SELECT COUNT(*) AS shipped_orders FROM orders
WHERE shipped_date IS NOT NULL;

-- Total revenue across all orders(sum of quantity* unit_price)
SELECT SUM(quantity*unit_price) AS total_revenue FROM OrderItems;

-- Average order value (compute per order, then average)
SELECT AVG(order_total) AS avg_order_value
FROM(
SELECT order_id, SUM(quantity*unit_price) AS order_total
FROM OrderItems
GROUP BY order_id) t;  # t is AS / define

-- Cheapest and most expensive product:
SELECT MIN(price) AS min_price, MAX(price) AS max_price
FROM Products;

# LEARNING STRING FUNCTION:
-- customer lable "Full Name <email>":
SELECT CONCAT(full_name, '<', COALESCE(email, 'no email'),'>')
AS NameWithEmail
FROM Customers;

-- Uppercase and lowercase product/category:
SELECT product_name,
UPPER(category) AS category_upper,
LOWER(product_name) AS product_lower
FROM Products;

-- Length of customer names:
SELECT full_name, LENGTH(full_name) AS name_length
FROM Customers;

-- -- Trim notes(learning/trailing spaces removed):
SELECT order_id, TRIM(notes) AS trimmed_notes
FROM Orders;

-- First 5 characters of each product name:
SELECT product_id, product_name, SUBSTRING(product_name, 1,5) AS first_five
FROM Products;

-- Mask email domain:
SELECT full_name, REPLACE(email,'@','[at]') AS masked_email
FROM Customers;

# LEARNING DATETIME FUNCTION:
-- Current date/time:
SELECT NOW() AS current_datetime;

-- Parts of order_date:
SELECT order_id,
EXTRACT(year FROM order_date) AS order_year,
EXTRACT(month FROM order_date) AS order_month,
EXTRACT(day FROM order_date) AS order_day
FROM Orders;

-- Estimated arrival = order_date + 7 days:
SELECT order_id, order_date,
DATE_ADD(order_date, INTERVAL 7 DAY) AS estimated_arrival
FROM Orders;

-- Days between order and ship (NULL if not shipped):
SELECT order_id,
DATEDIFF(shipped_date, order_date) AS days_to_ship
FROM Orders;

-- Year customers signed up:
SELECT DISTINCT YEAR(signup_date) AS signup_year
FROM Customers
ORDER BY signup_year;

