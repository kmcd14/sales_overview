-- Cleaned DIM_Products Table -- 
SELECT 
  p.ProductKey, 
  p.ProductAlternateKey AS 'Product Item Code', 
  p.EnglishProductName AS 'Product Name', 
  ps.EnglishProductSubcategoryName AS 'Sub Category', 
  -- Joined from Sub Category Table
  pc.EnglishProductCategoryName AS 'Product Category', 
  -- Joined from Category Table
  p.Color AS 'Product Colour', 
  p.Size AS 'Product Size', 
  p.ProductLine AS 'Product Line', 
  p.ModelName AS 'Product Model Name', 
  p.EnglishDescription AS 'Product Description', 
  ISNULL (p.Status, 'Outdated') AS 'Product Status' 
FROM 
  dbo.DimProduct as p 
  LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductSubcategoryKey = pc.ProductCategoryKey 
ORDER BY 
  p.ProductKey ASC
