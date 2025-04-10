/**
Foodco Assignment
1:--Write a query to show the unique fruitsname
2:--Write a query to show the highest amount
3:--Write a query to show the lowest amount
4:--Write a query to show the fruit that  does not have any amount
5:--Give 2500 for any record that shows missing amount
**/

select *
from [dbo].[FoodCo]

--1.Write a query to show the unique fruitsname
SELECT DISTINCT FruitsName
from [dbo].[FoodCo]

--2. Write a query to show the highest amount
SELECT MAX(amount) FROM [FoodCo.] 
AS Highest_Amount

--3 Write a query to show the lowest amount
SELECT MIN(amount) FROM [FoodCo.] 
AS Lowest_Amount

--4 Write a query to show the fruit that  does not have any amount
Select*
from [FoodCo.]
where amount IS NULL

--5 Give 2500 for any record that shows missing amount
update [FoodCo.]
set Amount = 2500
where amount IS NULL