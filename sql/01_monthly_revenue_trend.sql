SELECT
  DATE_TRUNC(InvoiceDate, MONTH) AS Month,
  ROUND(SUM(Revenue), 2) AS TotalRevenue,
  COUNT(DISTINCT Invoice) AS TotalOrders
FROM `ecommerce-analysis-492810.retail_data.online_retail`
GROUP BY Month
ORDER BY Month;