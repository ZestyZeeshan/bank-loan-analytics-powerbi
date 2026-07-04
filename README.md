# 📊 Bank Loan Analytics Dashboard

An end-to-end Business Intelligence solution built using **Power BI**, **SQL Server**, **Power Query**, and **DAX** to analyze bank loan performance through interactive dashboards and business-driven insights.

---

## 📌 Project Overview

The objective of this project is to transform raw banking loan data into meaningful insights that help monitor loan performance, repayment trends, customer behavior, and portfolio quality.

The dashboard enables business users to analyze loan applications, funded amounts, repayments, and customer demographics through an interactive reporting solution.

---

## 🎯 Business Objectives

- Monitor overall loan portfolio performance.
- Analyze loan applications over time.
- Track funded amount and repayments.
- Identify Good Loans and Bad Loans.
- Analyze customer segments based on employment, home ownership, purpose, and geography.
- Support business decisions using interactive dashboards.

---

# 🛠️ Technology Stack

| Technology | Purpose |
|------------|----------|
| Power BI Desktop | Dashboard Development |
| SQL Server | Data Storage & Validation |
| Power Query | Data Cleaning & Transformation |
| DAX | Business Calculations & Time Intelligence |
| SQL | Data Validation |

---

# 📂 Dataset

The dataset contains historical bank loan records with customer, financial, and loan-related information including:

- Loan ID
- Issue Date
- Loan Status
- Loan Amount
- Funded Amount
- Total Amount Received
- Interest Rate
- DTI
- Grade & Sub Grade
- Employment Length
- Home Ownership
- Loan Purpose
- State

---

# 📈 Dashboard Pages

## 1️⃣ Summary Dashboard

The Summary Dashboard provides an executive overview of the loan portfolio using key performance indicators and portfolio quality metrics.

### Features

- Total Loan Applications
- Total Funded Amount
- Total Amount Received
- Average Interest Rate
- Average DTI
- MTD, PMTD & MoM Analysis
- Good Loan vs Bad Loan Analysis
- Loan Status Summary
- Interactive Slicers

### Preview

<img width="1907" height="1198" alt="Summary Dashboard" src="https://github.com/user-attachments/assets/e06bc847-c84e-4868-b9cf-6188eaadbaae" />


## 2️⃣ Overview Dashboard

The Overview Dashboard focuses on business analysis through interactive visualizations.

### Features

- Monthly Loan Trends
- State-wise Loan Distribution
- Loan Term Analysis
- Employment Length Analysis
- Loan Purpose Analysis
- Home Ownership Analysis
- Dynamic Field Parameters


## 3️⃣ Details Dashboard

The Details Dashboard provides transaction-level information for individual loan records.

### Features

- Loan Details Table
- Customer Information
- Funding Details
- Repayment Details
- Page Navigation


# 📊 Data Model

The project follows a simple star schema by creating a dedicated **Date Table** and establishing a **One-to-Many** relationship with the loan dataset. This enables efficient filtering and supports Time Intelligence calculations.

---

# 📅 Time Intelligence

A custom Date Table was created to implement the following DAX calculations:

- Month-To-Date (MTD)
- Previous Month-To-Date (PMTD)
- Month-over-Month Growth (MoM)

---

# 📌 DAX Concepts Used

- CALCULATE()
- DATEADD()
- DATESMTD()
- FORMAT()
- SUM()
- COUNT()
- AVERAGE()

---

# ✨ Key Features

- Interactive Dashboard Navigation
- Dynamic Field Parameters
- Executive KPI Cards
- Time Intelligence Analysis
- Good vs Bad Loan Classification
- Geographic Analysis
- Customer Segmentation
- Interactive Filtering using Slicers
- Cross Visual Filtering

---

# 📈 Business Insights

- Loan portfolio performance can be monitored using executive KPIs.
- Good and Bad loan classifications help evaluate portfolio quality.
- Geographic analysis identifies high-performing states.
- Employment length and home ownership provide customer behavior insights.
- Loan purpose analysis highlights major borrowing trends.
- Time intelligence metrics support monthly performance tracking.

---

# 🚀 Getting Started

### Prerequisites

- Power BI Desktop
- SQL Server (Optional, if connecting to the database)

### Steps

1. Clone this repository.

```bash
git clone https://github.com/ZestyZeeshan/bank-loan-analytics-powerbi.git
```

2. Open the `.pbix` file using Power BI Desktop.

3. Refresh the data if required.

4. Explore the dashboards using the slicers and page navigation buttons.

---

# 📁 Repository Structure

```
Bank-Loan-Analytics-PowerBI
│
├── Dashboard
│   └── Bank Loan Dashboard.pbix
│
├── Dataset
│   └── SQL Validation Queries.sql
│
├── Images
│   ├── dashboard-summary.png
│   ├── dashboard-overview.png
│   └── dashboard-details.png
│
├── Documentation
│   └── Project Documentation.pdf
│
└── README.md
```

---

# 📚 Learning Outcomes

Through this project, I gained practical experience in:

- Data Cleaning using Power Query
- SQL Data Validation
- Data Modeling
- DAX Calculations
- Time Intelligence
- Interactive Dashboard Design
- Business-Oriented Data Visualization

---

# 🔮 Future Enhancements

- Row-Level Security (RLS)
- Power BI Service Deployment
- Scheduled Data Refresh
- Drill-through Pages
- Advanced Tooltips
- Azure SQL Integration

---





⭐ If you found this project helpful, consider giving it a star.
