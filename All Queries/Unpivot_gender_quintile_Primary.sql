-- Unpivot the tables to obtain Gender and Quintile columns
SELECT
Gender,
Quintile,  
Total_Quintile,
Total_Gender,
Countries_and_areas
From (Select 
	Countries_and_areas,
	Male,
	Female,
	Poorest_Wealth_quintile,
	Second_Wealth_quintile,
	Middle_Wealth_quintile,
	Fourth_Wealth_quintile,
	Richest_Wealth_quintile
From Portfolio..[Primary]
) p
UNPIVOT (
	Total_Quintile For [Quintile] In (Poorest_Wealth_quintile, Second_Wealth_quintile, Middle_Wealth_quintile, Fourth_Wealth_quintile, Richest_Wealth_quintile)
) as unpvt1
UNPIVOT (
	Total_Gender For [Gender] In (Male, Female)
) as unpvt2

