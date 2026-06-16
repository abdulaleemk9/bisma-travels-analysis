# bisma-travels-analysis
Travel agency sales analysis — Power BI dashboard, PostgreSQL queries, Excel data

# Bisma Travels — Sales & Customer Analysis

## Overview
End-to-end data analysis project for a travel agency covering bookings,
customer behaviour, lead conversion, and destination performance across
2023–2025. Built using Power BI for visualisation, PostgreSQL for
structured querying, and Excel as the data source.

## Tools Used
- **Power BI** — interactive 3-page dashboard
- **SQL (PostgreSQL / pgAdmin)** — JOIN-based analysis queries
- **Microsoft Excel** — raw data source

## Key Findings
- Total of **750 bookings** generating **₹68M revenue** and **₹18M net profit**
  at an average margin of **22.64%**
- Returning customers account for **89% of total revenue** (₹61M) despite
  being a smaller portion of the customer base
- **Premium tier** drives the highest revenue share at **47.83%**,
  followed by Regular at **43.32%**
- Lead conversion rate stands at **53.65%** — Cold Call generates the
  highest lead volume (146) across all outreach channels
- **Dubai (₹13.4M), Maldives (₹13.1M) and Thailand (₹12.4M)** are the
  top three destinations by revenue
- International travel accounts for **56.79%** of total revenue vs
  43.21% domestic
- **Peak Winter** is the strongest season with **291 bookings and ₹28.28M**
  revenue — Monsoon is the weakest at 80 bookings
- **Q1 is the top performing quarter** at ₹26.12M revenue;
  Q3 is the weakest at ₹6M
- **Maldives (24.2%) and Dubai (23.9%)** lead on profit margin;
  **Jaipur (22.3%) and Kerala (22.3%)** are the top domestic performers
- **James Sharma** is the highest revenue customer;
  **Fatima Verma** leads returning customer bookings

## Dashboard Pages

### Page 1 — Sales Overview
KPIs: Total Bookings, Net Profit, Profit Margin, Revenue
Visuals: Revenue by returning vs new customers, revenue by customer
tier, lead conversion by action type, converted leads gauge,
top destinations by revenue and profit

### Page 2 — Customer Analysis
KPIs: New customers (313), returning customers (177),
total bookings (750), average conversion rate (53.65%)
Visuals: Top 10 returning customers by bookings, revenue by city
of origin (map), top 10 customers by revenue, age and month slicers

### Page 3 — Destination & Seasonal Analysis
KPIs: Peak season revenue — Winter ₹28.28M, top domestic destination
Jaipur (101 bookings), top international destination Dubai (₹13.36M),
top performing quarter Q1 (₹26.12M)
Visuals: Profit margin by destination, revenue by destination map,
revenue by destination type, bookings by season

## SQL Queries
Seven queries in the `/sql` folder covering:
- Customer-level revenue and booking count (INNER JOIN)
- Returning customers who booked Kerala or Kashmir (JOIN + filter)
- Lead conversion rate by action type (LEFT JOIN)
- High-value customers never contacted via leads (LEFT JOIN + NULL check)
- Monthly revenue breakdown by customer tier (JOIN + GROUP BY)
- Seasonal performance summary
- Destination performance — domestic vs international

## Repository Structure
| File | Description |
|------|-------------|
| `data/TravelAgency_PracticeData.xlsx` | Raw dataset |
| `sql/bisma_travels_queries.sql` | All SQL queries |
| `dashboard/Bisma_Travels_Sales_report.pbix` | Power BI file |
| `screenshots/page1_overview.png` | Dashboard Page 1 |
| `screenshots/page2_customers.png` | Dashboard Page 2 |
| `screenshots/page3_destinations.png` | Dashboard Page 3 |

## How to View
- Download the `.pbix` file and open in **Power BI Desktop** (free)
- SQL queries can be run in **pgAdmin** or any PostgreSQL environment
- Screenshots in `/screenshots` for a quick preview without downloading
