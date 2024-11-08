use adventureworksDW2019;
SELECT p.ProductKey
      ,p.ProductAlternateKey as productitemcode
      ,p.EnglishProductName as ProductName
      ,ps.EnglishProductSubcategoryname as Sub_category
	  ,pc.EnglishProductCategoryname as Product_category
      ,p.Color
      ,p.size as Product_size
	  ,p.Productline as Product_line
	  ,p.Modelname as Product_Model_name
	  ,p.Englishdescription as Product_description 
      ,isnull(Status,'Outdated') as Product_status
  FROM dbo.dimproduct p 
  left join dbo.dimproductsubcategory ps 
  on p.productsubcategorykey=ps.productsubcategorykey 
  left join dbo.dimproductcategory pc 
  on ps.productcategorykey=pc.productcategorykey 

