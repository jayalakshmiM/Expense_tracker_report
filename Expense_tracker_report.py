import mysql.connector
import pandas as pd

# MySQL Connection
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root@1234",
    database="expense_tracker"
)

query = "SELECT * FROM expenses"

df = pd.read_sql(query, conn)

# --------------------
# Data Cleaning
# --------------------

df['amount'] = pd.to_numeric(df['amount'])

df['expense_date'] = pd.to_datetime(df['expense_date'])

df.drop_duplicates(inplace=True)

df.dropna(inplace=True)

# --------------------
# Daily Expense Data
# --------------------

print("\n===== DAILY EXPENSE DETAILS =====")
print(df)

# --------------------
# Category Report
# --------------------

category_report = df.groupby(
    ['category']
)['amount'].sum().reset_index()

print("\n===== CATEGORY-WISE REPORT =====")
print(category_report)

# --------------------
# Payment Mode Report
# --------------------

payment_report = df.groupby(
    ['payment_mode']
)['amount'].sum().reset_index()

print("\n===== PAYMENT MODE REPORT =====")
print(payment_report)

# --------------------
# Monthly Report
# --------------------

df['month'] = df['expense_date'].dt.strftime('%Y-%m')

monthly_report = df.groupby(
    ['month']
)['amount'].sum().reset_index()

print("\n===== MONTHLY EXPENSE REPORT =====")
print(monthly_report)


# --------------------
# Yearly Expense Report
# --------------------

df['year'] = df['expense_date'].dt.year

yearly_report = df.groupby(
    ['year']
)['amount'].sum().reset_index()

print("\n===== YEARLY EXPENSE REPORT =====")
print(yearly_report)

# --------------------
# Top 5 Expenses
# --------------------

top_expenses = df.sort_values(
    by='amount',
    ascending=False
).head(5)

print("\n===== TOP 5 EXPENSES =====")
print(top_expenses[['category','amount']])

# --------------------
# Total Expense
# --------------------

total = df['amount'].sum()

print("\n===== TOTAL EXPENSE =====")
print("₹", total)

conn.close()