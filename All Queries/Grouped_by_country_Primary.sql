-- Listing the countries from most children out of school to least.
-- Query for the Primary Table
SELECT
	ISO3,
	Countries_and_areas as Country,
	Region,
	Development_regions as [Development Region],
	Total as [Total (%)],
	Male as [Male (%)],
	Female as [Female (%)],
	Rural_Residence as [Rural Residence (%)],
	Urban_Residence as [Urban Residence (%)]

  FROM [Portfolio].[dbo].[Primary]
  WHERE Total IS NOT NULL
  AND Rural_Residence IS NOT NULL
  AND Urban_Residence IS NOT NULL
  ORDER BY CAST(Total AS INT) DESC
