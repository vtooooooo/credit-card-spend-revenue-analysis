# Credit Card Spend & Revenue Analysis

![Python](https://img.shields.io/badge/Python-3.10-blue)
![SQL](https://img.shields.io/badge/SQL-SQLite-lightgrey)
![Excel](https://img.shields.io/badge/Excel-Professional-green)
![PowerBI](https://img.shields.io/badge/PowerBI-Dashboard-yellow)

---

- Dataset Link: https://www.kaggle.com/datasets/priyamchoksi/credit-card-transactions-dataset
- PowerBI Link: https://drive.google.com/file/d/1aRE6BJl1eZ8YP0fmlybLDy9qj7_WP4kV/view?usp=drive_link

---

## Project Overview
This project simulates the work done by data analysts at major financial 
institutions like JPMorgan Chase and Bank of America. The objective was to 
analyze 1.28 million credit card transactions across 983 customers to identify 
revenue drivers, spending patterns, and high-value customer segments — insights 
that directly inform product strategy, marketing targeting, and revenue planning.

---

## Business Context
Credit card analysts at banks like JPMC track interchange revenue (the fee 
charged per transaction), customer spending behavior, and segment performance 
on a monthly basis. This project replicates that workflow end-to-end — from 
raw transaction data all the way to an executive-ready Power BI dashboard.

---

## Business Questions Answered
- Which spending categories generate the most revenue?
- Are there seasonal trends that can be leveraged for promotions?
- Which customer segments contribute the most to revenue?
- Which states represent the highest spending markets?
- When do customers spend most — by day of week and hour?
- How does spending behavior differ across age groups and gender?

---

## Key Findings
- **Grocery POS** is the #1 revenue-generating category at **$250,506** — 
  nearly double the second-highest category (Shopping POS at $154,237)
- **December 2019** showed a massive holiday spike — revenue hit **$172,494**, 
  more than double the average monthly revenue of ~$85,000
- **High Spenders** (303 customers) generate **$873,395 in revenue** — nearly 
  4x the Low Spender segment despite having the same number of customers
- **Travel** has the highest average transaction value at **$111.80**, 
  representing a premium but low-volume customer segment
- The **top 3 categories** (Grocery POS, Shopping POS, Gas & Transport) account 
  for over **40% of total revenue**
- **Summer months** (June, July, August) consistently show elevated revenue 
  around $105,000 — a clear seasonal pattern for targeted promotions

---

## Dataset
- **Source:** Kaggle — Credit Card Transactions Dataset
- **Size:** 1,296,675 transactions | 983 customers | 14 spending categories | 51 states
- **Period:** January 2019 – June 2020
- **Note:** Raw dataset not included due to file size. Download from the Kaggle 
  link above and place in the `/data` folder before running notebooks.

---

## Tools & Technologies
| Tool | Purpose |
|------|---------|
| Python (pandas, matplotlib, seaborn) | Data cleaning, EDA, visualizations |
| SQL (SQLite via Python) | Business queries and aggregations |
| Excel (openpyxl) | Formatted summary report |
| Power BI | Interactive 3-page dashboard |

---

## Project Pipeline

### Step 1 — Data Exploration
- Loaded and inspected 1.29M rows across 24 columns
- Checked data types, missing values, duplicates
- Analyzed transaction amount distribution
- Identified 14 spending categories across 51 states

### Step 2 — Data Cleaning & Feature Engineering
- Removed 7,506 fraudulent transactions (0.58% of data)
- Parsed datetime column and extracted year, month, day, hour, day of week
- Calculated customer age from date of birth
- Created age group buckets (18-25, 26-35, 36-45, 46-55, 56-65, 65+)
- Engineered revenue column using interchange fee proxy (amt × 1.8%)
- Segmented customers into Low, Mid, and High Spender tiers

### Step 3 — SQL Analysis
Ran 8 business queries covering:
- Revenue and spend by category
- Monthly revenue trend
- Top 10 states by spend
- Spend by gender
- Top 20 customers by lifetime value
- Spend by age group
- Revenue by customer spend tier
- Peak transaction hours

### Step 4 — Python Visualizations
Generated 6 analysis charts:
- Spend by Category (horizontal bar)
- Monthly Revenue Trend with holiday spike annotation (line chart)
- Transaction Volume Heatmap — Day of Week vs Hour
- Revenue by Customer Spend Tier (donut chart)
- Top 10 States by Spend (bar chart)
- Average Transaction Value & Revenue by Age Group (dual axis)

### Step 5 — Excel Summary Report
Built a 6-sheet formatted workbook with:
- Executive KPI Summary
- Category Analysis
- Monthly Trend
- Customer Spend Tier
- Top States
- Age Group Analysis

### Step 6 — Power BI Dashboard
Built a 3-page interactive dashboard:
- **Page 1 — Executive Summary:** KPI cards, monthly trend, spend by category, 
  map visual, slicers for year/category/gender
- **Page 2 — Customer Insights:** Spend tier donut, age group bar, gender split, 
  top 20 customers table with conditional formatting
- **Page 3 — Spend Behavior:** Day of week chart, hourly transaction volume, 
  category vs gender stacked bar, avg transaction by age group

---
