WITH CustomerSpend AS (
  SELECT
    CustomerID,
    ROUND(SUM(Revenue), 2) AS TotalSpend
  FROM `ecommerce-analysis-492810.retail_data.online_retail`
  GROUP BY CustomerID
)

SELECT
  CASE
    WHEN TotalSpend >= 5000 THEN 'High Value'
    WHEN TotalSpend >= 1000 THEN 'Mid Value'
    ELSE 'Low Value'
  END AS CustomerSegment,
  COUNT(CustomerID) AS NumberOfCustomers,
  ROUND(SUM(TotalSpend), 2) AS SegmentRevenue
FROM CustomerSpend
GROUP BY CustomerSegment
ORDER BY SegmentRevenue DESC;