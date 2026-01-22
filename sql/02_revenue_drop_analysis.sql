-- ============================================
-- 02_revenue_drop_analysis.sql
-- Purpose: Investigate reasons for revenue decline (May–July 2024)
-- Metrics: monthly revenue, total orders, average order value, category-level revenue and units
-- ============================================

-- Monthly revenue with total orders and average order value
SELECT strftime('%Y-%m',date) AS month,
SUM(total_revenue) AS monthly_revenue,
COUNT(DISTINCT transaction_id) AS total_orders,
SUM(total_revenue) / COUNT(DISTINCT transaction_id) AS average_order_value
FROM sales_cleaned
GROUP BY strftime('%Y-%m', date)
ORDER BY month;

-- Analyze product categories contributing to revenue decrease (May–July)
SELECT strftime('%Y-%m',date) AS month,
product_category,
SUM(units_sold) AS total_units,
SUM(total_revenue) AS total_revenue,
SUM(total_revenue) / COUNT(DISTINCT transaction_id) AS average_order_value
FROM sales_cleaned
WHERE strftime('%Y-%m', date) IN ('2024-05','2024-06','2024-07')
GROUP BY strftime('%Y-%m', date), product_category
ORDER BY month, total_revenue DESC;

-- Full-year product category breakdown (for context/comparison)
SELECT strftime('%Y-%m',date) AS month,
product_category,
SUM(units_sold) AS total_units,
SUM(total_revenue) AS total_revenue,
SUM(total_revenue) / COUNT(DISTINCT transaction_id) AS average_order_value
FROM sales_cleaned
GROUP BY strftime('%Y-%m', date), product_category
ORDER BY month, total_revenue DESC;

-- Focus on high-impact categories (Electronics, Sports, Home Appliances)
SELECT strftime('%Y-%m',date) AS month,
product_category,
SUM(units_sold) AS total_units,
SUM(total_revenue) AS total_revenue,
SUM(total_revenue) / COUNT(DISTINCT transaction_id) AS average_order_value
FROM sales_cleaned
WHERE product_category = 'Electronics' 
OR product_category = 'Sports'
OR product_category = 'Home Appliances'
GROUP BY strftime('%Y-%m', date), product_category
ORDER BY month, total_revenue DESC;


