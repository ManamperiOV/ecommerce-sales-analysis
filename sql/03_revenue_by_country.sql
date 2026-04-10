SELECT
  Country,
  ROUND(SUM(Revenue), 2) AS TotalRevenue,
  COUNT(DISTINCT CustomerID) AS UniqueCustomers,
  COUNT(DISTINCT Invoice) AS TotalOrders
FROM `ecommerce-analysis-492810.retail_data.online_retail`
GROUP BY Country
ORDER BY TotalRevenue DESC;