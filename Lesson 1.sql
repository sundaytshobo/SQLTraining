/**
Developer: Sunday Shobo
Date: 3.12.25
Version: V_1.0
**/

--how to find server name
select @@SERVERNAME

--how to create a database
create database Emade_Dev
Go

use Emade_Dev
Go

--how to check data 
select *
from employee 

--how to count how many records in a table
select count(*) as totalcounts
from Employee

--how to show the females in this table
select * 
from Employee
where Gender = 'F'

--how to show employees from spain
select *
from Employee
where Country = 'Spain'

--how to find the year in noble table
select *
from Noble
where Year = '1962'

--how to find the subject of medicine
select *
from Noble
where Subject = 'medicine'

--how to find the latest year in table
select MAX (Year) as latest_year
from Noble

--how to show number of records
select *
from Noble

--how to to find the year in Games table
select *
from games
where Year = '2004'

--how to to find the city in Games table
select *
from games
where city = 'London'

--how to find the latest year in table
select MAX (Year) as latest_year
from games

--how to to find the Gdp in World table
select *
from World
where area = '468'

--how to to find the country in World table
select *
from World
where CountryName = 'Angola'

--how to find the lowest gdp in World 
select MIN (Year) as lowest_gdp
from World

--how to to find the number of records in world table
select *
from world
