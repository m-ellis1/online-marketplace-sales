# Online Sales Revenue Analysis

## Project Overview
This project analyzes online marketplace sales data to understand overall business performance and investigate a revenue decline observed in mid-2024. Using SQL, I explore core KPIs, monthly revenue trends, and product category performance to identify the drivers behind changing revenue patterns.

The analysis focuses on distinguishing whether the decline was driven by fewer orders or by changes in customer purchasing behavior.

---

## Dataset
- Source: Kaggle – Online Sales Dataset (Popular Marketplace Data)
- Data includes transaction-level information such as:
  - Order date
  - Product category
  - Units sold
  - Revenue
  - Transaction ID

The dataset was cleaned and loaded into SQLite for analysis.

---

## Key Business Questions
1. What are the core business KPIs (total revenue, total orders)?
2. How did monthly revenue trend throughout 2024?
3. When revenue declined, was it driven by fewer orders or lower average order value?
4. Which product categories contributed most to the revenue drop?

---

## Repository Structure

online-marketplace-sales/
│
├── README.md
├── insights.md
│   ├── 01_core_metrics.md
│   └── 02_revenue_drop_analysis.md
│
├── sql/
│   ├── 01_core_metrics.sql
│   └── 02_revenue_drop_analysis.sql
│
├── data/
│   ├── cleaned
│   └── raw


---

## Analysis Summary

### Core Metrics
- Revenue peaked early in the year (January–April).
- A clear decline began in May and continued through July.
- August showed a slight recovery.

### Revenue Drop Investigation (May–July 2024)
- **Total order volume remained relatively stable**
- **Average order value declined month over month**
- The revenue decrease was driven primarily by **smaller, lower-value purchases**, not fewer customers.

### Category-Level Findings
- Electronics, Home Appliances, and Clothing were the largest contributors to the revenue decline.
- Units sold dropped slightly, but the sharper decline was in **average order value**, especially in high-revenue categories.
- Lower-priced categories (Books, Beauty Products) had minimal impact on the overall revenue trend.

---

## Tools Used
- SQL (SQLite)
- SQLiteStudio
- GitHub (version control & documentation)
- Tableau (visualization – forthcoming)

---

## Next Steps
- Visualize trends using Tableau:
  - Monthly revenue & AOV trends
  - Category-level revenue changes
- Drill down to product-level pricing and promotion effects
- Explore strategies to increase average order value (bundling, upselling)

---

## Author
Morgan Ellis  
Data Analytics Portfolio Project

---
name: sales_analysis
version: 1.0

