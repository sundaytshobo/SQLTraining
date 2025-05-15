Select *
From [dbo].[COVIDDATASET]

Select *
From [dbo].[EMADE_COVID_DEATHS]

Select *
From [dbo].[EMADE_COVID_VACCINATIONS]

Select *
    SUM (total_cases) AS total_deaths, 
    SUM (total_deaths) AS total_cases
FROM [EMADE_COVID_VACCINATIONS];



select count(new_tests) as total
From [dbo].[EMADE_COVID_VACCINATIONS]

select sum(new_tests) as total
From [dbo].[EMADE_COVID_VACCINATIONS]

--How to change column data type
alter table [dbo].[EMADE_COVID_VACCINATIONS]			
alter column new_tests float

select people_vaccinated, coalesce(people_vaccinated,0) as	nulls
From [dbo].[EMADE_COVID_VACCINATIONS]

select people_vaccinated, isnull(people_vaccinated,0) as	nulls
From [dbo].[EMADE_COVID_VACCINATIONS]

--How to handle Nulls using insull function
select people_vaccinated, isnull(people_vaccinated,0) as	nulls
From [dbo].[EMADE_COVID_VACCINATIONS]

select continent, sum(new_tests) + isnull(people_vaccinated,0) as total
From [dbo].[EMADE_COVID_VACCINATIONS]
group by continent, new_tests, people_vaccinated

--How to change column data type for date
alter table [dbo].[EMADE_COVID_VACCINATIONS]			
alter column date date

--how new test cases per year by continent
Select continent, year(date) As CovidYear,
Count (new_tests) As TotalNewTest 
From [dbo].[EMADE_COVID_VACCINATIONS]
Group by Continent, year(date) 


--how new test cases per year month by continent
Select continent,
year(date) As CovidYear,
month(date) As CovidMonth,
Count (new_tests) As TotalNewTest 
From [dbo].[EMADE_COVID_VACCINATIONS]
Group by Continent, year(date),month(date) 

--how new test cases per year month day by continent
Select continent,
year(date) As CovidYear,
month(date) As CovidMonth,
day(date) As CovidDay,
Count (new_tests) As TotalNewTest 
From [dbo].[EMADE_COVID_VACCINATIONS]
Group by Continent, year(date),month(date) ,day(date)

--UPDATE NULLS
UPDATE [dbo].[EMADE_COVID_VACCINATIONS]
SET 
[new_tests]	     = 0 , 
[total_tests] = 0 
Where [new_tests] is null OR total_tests is null

SHOWS 0 IN FILE

Select *
From [dbo].[EMADE_COVID_VACCINATIONS]
Where [new_tests] = 0 OR total_tests = 0

Select *
From [dbo].[EMADE_COVID_VACCINATIONS]
Where [new_tests] <> 0 OR total_tests <> 0