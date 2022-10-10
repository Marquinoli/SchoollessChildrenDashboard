-- Grouping all regions and listing their total children percentages
-- Querying from Lower Secondary table

SELECT 
	Region, 
	SUM(Cast(Total as int)) / COUNT(*) as [Total in Region (%)],
	SUM(Cast(Male as int)) / COUNT(*) as [Male in Region (%)],
	SUM(Cast(Female as int)) / COUNT(*) as [Female in Region(%)]
FROM Portfolio..[Lower Secondary]
WHERE Total IS NOT NULL
GROUP BY Region
ORDER BY SUM(CAST(Total as int)) / COUNT(*) DESC

SELECT 
	Region, 
	SUM(Cast(Total as int)) / COUNT(*) as [Total in Region (%)],
	SUM(Cast(Male as int)) / COUNT(*) as [Male in Region (%)],
	SUM(Cast(Female as int)) / COUNT(*) as [Female in Region(%)]
FROM Portfolio..[Upper Secondary]
WHERE Total IS NOT NULL
GROUP BY Region
ORDER BY SUM(CAST(Total as int)) / COUNT(*) DESC

SELECT 
	Region, 
	SUM(Cast(Total as int)) / COUNT(*) as [Total in Region (%)],
	SUM(Cast(Male as int)) / COUNT(*) as [Male in Region (%)],
	SUM(Cast(Female as int)) / COUNT(*) as [Female in Region(%)]
FROM Portfolio..[Primary]
WHERE Total IS NOT NULL
GROUP BY Region
ORDER BY SUM(CAST(Total as int)) / COUNT(*) DESC

