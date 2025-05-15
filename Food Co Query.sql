Select *
From [dbo].[FoodCo]

--how to show only fruit names in this table
select * 
from [dbo].[FoodCo]


--Foodco. table creation
create table [FoodCo.]
("S.no" int null,
FruitsName varchar (50) not null,
Amount int null)


insert into [FoodCo.]
([S.no], FruitsName, Amount)
values
(1,'Apple',150),
(2,'Banana',75),
(3,'Orange',60),
(4,'Papaya',80),
(5,'Mango',95),
(6,'Apple',150),
(7,'Lechi', null)