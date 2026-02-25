Credit Card Spend \& Revenue Analysis

Tools Used: Python (pandas, matplotlib, seaborn) | SQL (SQLite) | Excel | Power BI

Business Context:

This project simulates the work done by data analysts at major financial institutions like JPMorgan Chase and Bank of America. The objective was to analyze 1.28 million credit card transactions across 983 customers to identify revenue drivers, spending patterns, and customer segments — insights that directly inform product strategy, marketing targeting, and revenue planning.

Key Business Questions Answered:



Which spending categories generate the most revenue?

Are there seasonal trends that can be leveraged for promotions?

Which customer segments contribute the most to revenue?

Which states represent the highest spending markets?

When do customers spend most — by day and hour?



Key Findings:



Grocery POS is the #1 revenue-generating category at $250,506, nearly double the second-highest category

December 2019 showed a 100%+ revenue spike to $172,494 compared to surrounding months — driven by holiday spending

High Spenders (303 customers) generate $873,395 in revenue — nearly 4x the Low Spender segment despite equal customer count

Travel has the highest average transaction value at $111.80, representing a premium customer opportunity

The top 3 categories (Grocery POS, Shopping POS, Gas \& Transport) account for over 40% of total revenue



Project Structure

credit-card-spend-analysis/

│

├── data/                  → raw + cleaned CSVs

├── notebooks/             → Python EDA + cleaning notebook

├── sql/                   → SQL query files

├── visualizations/        → 6 Python charts (PNG)

├── excel/                 → CC\_Spend\_Revenue\_Analysis.xlsx

├── dashboard/             → CC\_Spend\_Revenue\_Dashboard.pbix + PDF

└── README.md

=======
# credit-card-spend-revenue-analysis
Credit card spend and revenue analysis using Python, SQL, Excel and Power BI
>>>>>>> 720bdbb7fde82588296a5d09c6780eb6a90ddf05
