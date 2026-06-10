# BFSI Loan & Customer Risk Analytics (SQL Project)

## 📌 Project Overview
This project simulates a **Banking & Financial Services (BFSI) loan analytics database**. 
It demonstrates how SQL can be used for **risk management, portfolio analysis, repayment tracking, and fraud detection**.

## 📂 Project Structure
- schema/ → DDL & sample data (DDL/DML)
- queries/ → Business analytics queries
- advanced/ → Window functions & fraud detection queries
- reports/ → Predefined reporting queries

## ⚙️ Setup Instructions
1. Create a new Oracle (or any SQL) database schema.
2. Run scripts in `schema/` to create tables and load sample data.
3. Run queries in `queries/`, `advanced/`, and `reports/` for analytics.

## 📊 Business Insights Included
- Loan portfolio health by product type
- High-risk customer detection
- Monthly repayment trend
- Fraud detection patterns
- Top customers by loan exposure

---

## 📈 Power BI Visualization Dashboard

You can visualize the analytics from this project using Power BI. Here’s how to set up your dashboard:

### 1. Prepare Data Sources
- Ensure your database is running and loaded with the provided SQL scripts.
- Note your database connection details (host, port, username, password, database/schema name).

### 2. Connect Power BI to Your Database
- Open Power BI Desktop.
- Click **Get Data** > **SQL Server** (or your DB type).
- Enter your server and database details. Click **OK**.
- Load tables: Customers, Loans, Repayments, etc.

### 3. Example Visualizations
- **Loan Portfolio Health:** Pie/Bar chart by product type.
- **High-Risk Customers:** Table or card visual using `risk_customers.sql`.
- **Repayment Trends:** Line chart using `repayment_analysis.sql`.
- **Fraud Detection:** Table using `fraud_detection_patterns.sql`.
- **Top Customers:** Bar chart using `top_customers.sql`.

### 4. Custom SQL Queries
- In Power BI, use **Get Data** > **SQL Server** > **Advanced options** to paste custom SQL from the provided `.sql` files for direct analytics.

### 5. Save and Share
- Save your Power BI report as `.pbix`.
- Share the dashboard or publish to Power BI Service as needed.

---
👨‍💻 Author: Dnyaneshvar Khairnar
