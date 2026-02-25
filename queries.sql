# --- QUERY 1: Total Spend, Revenue & Transaction by Category ---
q1 = pd.read_sql("""
    SELECT 
        category,
        count(*) as transaction_count,
        round(sum(amt), 2) as total_spend,
        round(avg(amt), 2) as avg_transaction,
        round(sum(revenue), 2) as total_revenue
    from transactions
    group by category
    order by total_spend desc
""",conn)

print("=== SPEND & REVENUE BY CATEGORY ===")
print(q1.to_string(index=False))

# --- QUERY 2: Monthly Revenue Trend ---
q2 = pd.read_sql("""
    SELECT
        trans_year,
        trans_month,
        count(*) as transaction_count,
        round(sum(amt), 2) as monthly_spend,
        round(sum(revenue), 2) as monthly_revenue
    from transactions
    group by trans_year, trans_month
    order by trans_year, trans_month
""",conn)

print("=== MONTHLY REVENUE TREND ===")
print(q2.to_string(index=False))

# --- QUERY 3: TOP 10 STATES BY SPEND ---
q3 = pd.read_sql("""
    SELECT
        state,
        count(*) as transaction_count,
        round(sum(amt), 2) as total_spend,
        round(avg(amt), 2) as avg_spend, 
        round(sum(revenue), 2) as total_revenue
    from transactions
    group by state
    order by total_spend desc limit 10
""", conn)

print("=== TOP 10 STATES BY SPEND ===")
print(q3.to_string(index=False))

# --- QUERY 4: Spend & Revenue by Gender ---
q4 = pd.read_sql("""
    SELECT
        gender,
        count(*) as transaction_count,
        round(sum(amt), 2) as total_spend,
        round(avg(amt), 2) as avg_spend, 
        round(sum(revenue), 2) as total_revenue
    from transactions
    group by gender
""",conn)

print("=== SPEND BY GENDER ===")
print(q4.to_string(index=False))

# --- QUERY 5: Customer Lifetime Value - Top 20 Customers ---
q5 = pd.read_sql("""
    SELECT 
        cc_num,
        COUNT(*) AS transaction_count,
        ROUND(SUM(amt), 2) AS total_spend,
        ROUND(AVG(amt), 2) AS avg_transaction,
        ROUND(SUM(revenue), 2) AS lifetime_revenue
    FROM transactions
    GROUP BY cc_num
    ORDER BY total_spend DESC
    LIMIT 20
""", conn)

print("=== TOP 20 CUSTOMERS BY LIFETIME VALUE ===")
print(q5.to_string(index=False))

# --- QUERY 6: Spend by Age Group ---
q6 = pd.read_sql("""
    SELECT 
        age_group,
        COUNT(*) AS transaction_count,
        ROUND(SUM(amt), 2) AS total_spend,
        ROUND(AVG(amt), 2) AS avg_transaction,
        ROUND(SUM(revenue), 2) AS total_revenue
    FROM transactions
    GROUP BY age_group
    ORDER BY total_spend DESC
""", conn)

print("=== SPEND BY AGE GROUP ===")
print(q6.to_string(index=False))


# --- QUERY 7: Revenue by Customer Spend Tier ---
q7 = pd.read_sql("""
    SELECT 
        spend_tier,
        COUNT(DISTINCT cc_num) AS customer_count,
        COUNT(*) AS transaction_count,
        ROUND(SUM(amt), 2) AS total_spend,
        ROUND(SUM(revenue), 2) AS total_revenue
    FROM transactions
    GROUP BY spend_tier
    ORDER BY total_revenue DESC
""", conn)

print("=== REVENUE BY CUSTOMER SPEND TIER ===")
print(q7.to_string(index=False))


# --- QUERY 8: Peak Transaction Hours ---
q8 = pd.read_sql("""
    SELECT 
        trans_hour,
        COUNT(*) AS transaction_count,
        ROUND(SUM(amt), 2) AS total_spend
    FROM transactions
    GROUP BY trans_hour
    ORDER BY transaction_count DESC
    LIMIT 10
""", conn)

print("=== TOP 10 PEAK HOURS ===")
print(q8.to_string(index=False))