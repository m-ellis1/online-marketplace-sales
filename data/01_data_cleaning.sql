-- ============================================
-- 01_data_cleaning.sql
-- Purpose: Clean raw sales data and create
--          analysis-ready sales_cleaned table
-- Dataset: Kaggle Online Marketplace Sales
-- ============================================

-- Rename columns for SQL-friendly namin
ALTER TABLE online_sales RENAME COLUMN "Transaction ID" TO transaction_id;
ALTER TABLE online_sales RENAME COLUMN "Date" TO date;
ALTER TABLE online_sales RENAME COLUMN "Product Category" TO product_category;
ALTER TABLE online_sales RENAME COLUMN "Product Name" TO product_name;
ALTER TABLE online_sales RENAME COLUMN "Units Sold" TO units_sold;
ALTER TABLE online_sales RENAME COLUMN "Unit Price" TO unit_price;
ALTER TABLE online_sales RENAME COLUMN "Total Revenue" TO total_revenue;
ALTER TABLE online_sales RENAME COLUMN "Region" TO region;
ALTER TABLE online_sales RENAME COLUMN "Payment Method" TO payment_method;

-- Drop cleaned table if it already exists
DROP TABLE IF EXISTS sales_cleaned;

-- Create cleaned table
CREATE TABLE sales_cleaned AS
SELECT
    transaction_id,
    date,
    product_name,
    product_category,
    units_sold,
    unit_price,
    total_revenue,
    region,
    payment_method
FROM online_sales
WHERE total_revenue IS NOT NULL
  AND units_sold > 0
