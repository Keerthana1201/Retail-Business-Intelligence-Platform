# Retail Business Intelligence Platform

## Overview

The Retail Business Intelligence Platform is an end-to-end Business Intelligence project developed to analyze retail sales data and provide actionable insights for business decision-making. The project demonstrates the complete BI workflow, beginning with raw transactional data and ending with interactive dashboards for different business stakeholders.

The solution integrates Python for data preprocessing and analysis, MySQL for business analytics, and Power BI for interactive dashboard development.

---

## Business Problem

Retail organizations generate large volumes of sales transactions every day. Extracting meaningful insights from this data is essential for improving profitability, customer satisfaction, inventory management, and strategic planning.

This project addresses the following business questions:

- Which products generate the highest revenue and profit?
- Which regions contribute the most to business growth?
- Which customer segments are most valuable?
- How do discounts affect profitability?
- What are the sales trends over time?
- How can management make data-driven decisions using interactive dashboards?

---

## Objectives

- Clean and preprocess retail sales data.
- Perform feature engineering to create business-ready attributes.
- Analyze data using SQL business queries.
- Perform Exploratory Data Analysis using Python.
- Build role-based Power BI dashboards.
- Generate actionable business insights.

---

## Technology Stack

| Technology | Purpose |
|------------|---------|
| Python | Data Cleaning, Feature Engineering, EDA |
| Pandas | Data Manipulation |
| NumPy | Numerical Computation |
| Matplotlib | Data Visualization |
| MySQL | SQL Business Analytics |
| Power BI | Interactive Dashboard Development |
| Git | Version Control |
| GitHub | Project Repository |

---

## Project Architecture

```
Raw Dataset
      │
      ▼
Python Data Cleaning
      │
      ▼
Feature Engineering
      │
      ▼
Clean Dataset
      │
      ▼
MySQL Business Analytics
      │
      ▼
Python Exploratory Data Analysis
      │
      ▼
Power BI Dashboards
      │
      ▼
Business Insights
```

---

## Project Workflow

### Phase 1: Data Collection

- Imported the Superstore Sales Dataset.
- Understood dataset structure and business attributes.

### Phase 2: Data Cleaning

Performed data preprocessing using Python.

Tasks included:

- Missing value analysis
- Duplicate removal
- Date conversion
- Data type correction
- Column standardization

---

### Phase 3: Feature Engineering

Created additional business attributes including:

- Year
- Quarter
- Month
- Month Name
- Shipping Days
- Profit Margin
- Discount Category
- Sales Category
- Order Size

These engineered features simplify downstream analysis and reporting.

---

### Phase 4: SQL Business Analytics

Imported the cleaned dataset into MySQL and developed business-focused SQL queries.

Analysis modules included:

- Executive KPIs
- Sales Trend Analysis
- Regional Performance
- Customer Analytics
- Product Performance
- Discount Analysis
- Shipping Analysis
- Advanced SQL using Window Functions and CTEs

Approximately 35 SQL queries were developed.

---

### Phase 5: Exploratory Data Analysis

Performed business-oriented analysis using Python.

Visualizations included:

- Monthly Sales Trend
- Monthly Profit Trend
- Category Analysis
- Regional Performance
- Customer Segmentation
- Product Performance
- Discount vs Profit
- Shipping Analysis

---

### Phase 6: Power BI Dashboard Development

Developed four stakeholder-specific dashboards.

#### Executive Overview

Provides a high-level summary of business performance.

Includes:

- Total Sales
- Total Profit
- Profit Margin
- Total Orders
- Total Customers
- Average Order Value
- Sales Trend
- Profit Trend
- Category Performance
- Geographic Performance

---

#### CEO Dashboard

Designed for executive-level strategic decision making.

Includes:

- Revenue Analysis
- Profit Analysis
- Product Performance
- Category Analysis
- Customer Segmentation
- Top Products

---

#### Sales & Customer Dashboard

Focused on customer behavior and sales performance.

Includes:

- Monthly Sales
- Customer Analysis
- Segment Analysis
- Quantity Sold
- Customer Revenue
- Average Order Value

---

#### Regional & Product Dashboard

Designed for regional and product managers.

Includes:

- Regional Sales
- Regional Profit
- State Performance
- Product Performance
- Discount Analysis
- Shipping Analysis

---

## SQL Modules

The project includes SQL analysis covering:

- Executive KPIs
- Sales Trend Analysis
- Regional Performance
- Customer Analytics
- Product Performance
- Discount Analysis
- Shipping Analysis
- Window Functions
- Common Table Expressions (CTEs)

---

## Dashboard Features

- Interactive Filters
- Dynamic KPI Cards
- Geographic Analysis
- Product Analysis
- Customer Analysis
- Time-Series Analysis
- Role-Based Dashboards

---

## Key Business Insights

- Technology category generated the highest profit.
- Consumer segment contributed the highest revenue.
- West region consistently achieved the strongest sales performance.
- High discounts negatively impacted profitability.
- Sales peaked during the fourth quarter.

---

## Business Recommendations

- Increase investment in high-performing product categories.
- Optimize discount strategies to improve profit margins.
- Expand operations in high-performing regions.
- Strengthen customer retention initiatives.
- Improve inventory planning during peak sales periods.

---

## Repository Structure

```
Retail-Business-Intelligence-Platform
│
├── data
│   ├── raw
│   └── processed
│
├── notebooks
│   ├── 01_Data_Understanding_and_Cleaning.ipynb
│   └── 02_Business_EDA.ipynb
│
├── sql
│   ├── create_database.sql
│   ├── create_table.sql
│   └── business_queries.sql
│
├── powerbi
│   └── retail_dashboard.pbix
│
├── reports
│   └── Business_Insights.md
│
├── screenshots
│
└── README.md
```

---

## Future Enhancements

- Sales Forecasting using Machine Learning
- Customer Segmentation using Clustering
- Inventory Demand Forecasting
- Automated Data Refresh
- Cloud Deployment
- Real-Time Dashboard Integration

---

## Learning Outcomes

This project strengthened practical knowledge in:

- Business Intelligence
- SQL Analytics
- Data Cleaning
- Feature Engineering
- Exploratory Data Analysis
- Power BI Dashboard Development
- Data Visualization
- Business Reporting
- Stakeholder-Focused Analytics

---

## Author

**Keerthana P**


