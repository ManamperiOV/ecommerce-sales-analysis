SELECT
  StockCode,
  Description,
  ROUND(SUM(Revenue), 2) AS TotalRevenue,
  SUM(Quantity) AS TotalUnitsSold
FROM `ecommerce-analysis-492810.retail_data.online_retail`
GROUP BY StockCode, Description
ORDER BY TotalRevenue DESC
LIMIT 10;