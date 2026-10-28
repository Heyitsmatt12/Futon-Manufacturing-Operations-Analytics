# Futon-Manufacturing-Operations-Analytics
SQL Server and Tableau project analyzing manufacturing production, completion rates, scrap quantities, and quality performance using synthetic data.

## Project Overview

This project focuses on analyzing manufacturing production and quality performance using SQL Server and Tableau. I created SQL views to organize production and inspection data, then used the results to build an interactive dashboard that tracks production efficiency, completion rates, scrap quantities, and quality acceptance rates.

The goal was to make it easier to monitor manufacturing operations, identify production trends, and compare performance across products.

**[View Interactive Tableau Dashboard](https://public.tableau.com/views/FutonManufacturing-OperationsQualityDashboard/Dashboard1)**

## Tools Used

- **SQL Server:** Data querying, joins, CASE statements, calculated fields, and SQL views
- **Tableau Public:** Data visualization, calculated fields, KPI dashboards, and interactive filters
- **Excel/CSV:** Exporting SQL query results for Tableau

## Key Performance Indicators

The dashboard tracks the following manufacturing metrics:

| Metric | Value |
|---|---|
| Total Production Orders | 300 |
| Completed Production Orders | 283 |
| Production Completion Rate | 94.3% |
| Units Produced | 9,755 |
| Units Scrapped | 282 |

The dashboard also includes a quality acceptance rate based on inspection records.

## SQL Development

I created two SQL views to prepare the manufacturing data for reporting.

### 1. Production Performance View

**`dbo.vw_ProductionPerformance`**

This view combines production order information with product details and calculates additional fields to support production reporting.

Key fields include:
- Production order and work order numbers
- Product names
- Production start and completion dates
- Production status
- Order quantities, completed quantities, and scrapped quantities
- Completion and on-time completion indicators

### 2. Quality Performance View

**`dbo.vw_QualityPerformance`**

This view combines quality inspection records with product information to analyze inspection results.

Key fields include:
- Inspection dates and types
- Product names
- Quantities inspected, accepted, and rejected
- Acceptance and rejection rates

## Tableau Dashboard

The dashboard includes several visualizations designed to monitor manufacturing operations:

- **Production Completion Rate:** Donut chart showing completed versus incomplete production orders
- **Quality Acceptance Rate:** Donut chart showing accepted versus rejected inspection quantities
- **Production KPIs:** Total production orders, units produced, and units scrapped
- **Monthly Production Trend:** Line chart showing production quantities over time
- **Production by Product:** Horizontal bar chart comparing completed quantities across products

### Interactive Features

I added filters to make it easier to explore the data:

- Production status filter
- Production start date filter
- Product-level filtering by selecting bars in the production chart

## Project Workflow

1. Queried manufacturing production and quality inspection data in SQL Server.
2. Created SQL views to combine relevant tables and calculate reporting fields.
3. Validated production totals and inspection metrics using SQL.
4. Exported the SQL view results to CSV files.
5. Imported the datasets into Tableau Public.
6. Created KPI cards, donut charts, a monthly trend chart, and product comparisons.
7. Added interactive filters and published the completed dashboard.

## Dataset

This project uses **synthetic manufacturing data** created for portfolio and analytics practice. It does not contain actual company or customer information.

## Dashboard Link

[View Futon Manufacturing Operations & Quality Dashboard on Tableau Public](https://public.tableau.com/views/FutonManufacturing-OperationsQualityDashboard/Dashboard1)

## Skills Demonstrated

SQL Server | SQL Views | Joins | CASE Statements | Data Validation | KPI Reporting | Tableau | Data Visualization | Manufacturing Analytics
