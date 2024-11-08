use adventureworksDW2019; 
SELECT c.CustomerKey
      ,c.CustomerAlternateKey
	  , concat(c.firstname, ' ', c.lastname) as Name
      ,cast(c.BirthDate as date) as Birthdate
      ,case when maritalstatus='M' then 'Married' else 'Single' end as Marital_status
      ,case when gender='M' then 'Male' else 'Female' end as Gender
      ,YearlyIncome
	  , c.datefirstpurchase as DateFirstPurchase
	  ,g.city as City
	  ,g.Englishcountryregionname as Country 
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] c
  join dbo.dimgeography g on c.geographykey=g.geographykey
  order by c.customerkey ASC; 

