SELECT 
  c.customerkey as 'CustomerKey', 
  c.FirstName AS 'First Name', 
  c.LastName AS 'Last Name', 
  c.FirstName + ' ' + c.lastname AS 'Full Name', 
  CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  c.DateFirstPurchase AS 'Date First Purchase', 
  g.city AS 'Customer City' -- Joined Customer City from Geography Table
FROM 
  dbo.DimCustomer AS c 
  LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey 
ORDER BY 
  CustomerKey ASC -- Ordered in Ascending order by CustomerKey
