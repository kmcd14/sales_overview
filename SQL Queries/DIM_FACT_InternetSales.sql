-- Cleaned FACT_InternetSales Table -- 
SELECT 
  ProductKey, 
  OrderDateKey, 
  DueDateKey, 
  ShipDateKey, 
  CustomerKey, 
  SalesOrderNumber, 
  SalesAmount, 
  TaxAmt 
FROM 
  dbo.FactInternetSales 
WHERE 
  LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) -2 -- Get data from the last two years only. #GETDATE() gets today's date
ORDER BY 
  OrderDateKey ASC
