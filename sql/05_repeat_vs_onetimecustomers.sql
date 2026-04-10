WITH CustomerOrders AS (
  SELECT
    CustomerID,
    COUNT(DISTINCT Invoice) AS TotalOrders
  FROM `ecommerce-analysis-492810.retail_data.online_retail`
  GROUP BY CustomerID
)

SELECT
  CASE
    WHEN TotalOrders = 1 THEN 'One-Time'
    ELSE 'Repeat'
  END AS CustomerType,
  COUNT(CustomerID) AS NumberOfCustomers,
  ROUND(COUNT(CustomerID) * 100.0 / SUM(COUNT(CustomerID)) OVER(), 2) AS Percentage
FROM CustomerOrders
GROUP BY CustomerType;