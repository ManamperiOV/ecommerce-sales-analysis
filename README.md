# E-Commerce Sales Analysis

## Overview
End-to-end data analysis project using the UCI Online Retail II dataset 
(805,549 transactions from 2009–2011). The goal was to uncover revenue trends, 
top products, and customer behaviour to support business decision-making.

## Tools Used
- **Python (pandas)** — data cleaning and transformation
- **Google BigQuery** — data warehousing and SQL analysis
- **Looker Studio** — interactive dashboard

## Dataset
- Source: UCI Machine Learning Repository — Online Retail II
- Raw rows: ~1M | Cleaned rows: 805,549
- Fields: Invoice, StockCode, Description, Quantity, InvoiceDate, Price, CustomerID, Country

## Business Questions Answered
1. How is revenue trending month over month?
2. Which products are driving the most revenue?
3. Which countries are our biggest markets?
4. How do customers break down by spending tier?
5. What share of customers are repeat buyers?

## Key Findings
- Revenue grew consistently from 2009 to 2011 with a clear spike in Q4 (holiday season)
- REGENCY CAKESTAND 3 TIER was the top revenue-generating product
- The UK accounts for the majority of revenue, with some international presence
- 11.4% of customers are High Value (≥£5,000 spend) — a small but critical segment
- 72% of customers are repeat buyers, indicating strong retention

## Dashboard
[View the Looker Studio Dashboard](https://lookerstudio.google.com/reporting/fe3c38cf-ad4b-4e9c-b1fe-4570c53e7d00)

## Project Structure
- `clean_and_load.ipynb` — Python script for data cleaning and BigQuery upload
- `sql/` — folder containing all 5 SQL queries used for analysis
