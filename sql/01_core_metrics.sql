-- ============================================
-- 01_core_metrics.sql
-- Purpose: Core business KPIs for online marketplace
-- Metrics: revenue, orders, trends
-- ============================================

-- Total revenue across all orders
SELECT SUM(total_revenue) AS total_revenue
FROM sales_cleaned;

-- Total number of orders
SELECT COUNT(DISTINCT transaction_id) AS total_orders
FROM sales_cleaned;

-- Monthly revenue trend
SELECT strftime('%Y-%m', date) AS month,
SUM(total_revenue) AS monthly_revenue
FROM sales_cleaned
GROUP BY month
ORDER BY month;

-- Revenue by product category
SELECT product_category, SUM(total_revenue) AS revenue
FROM sales_cleaned
GROUP BY product_category
ORDER BY revenue DESC;
