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
UPDATE [dbo].[COVIDDATASET]
SET 
[total_cases]	     = 0
,[new_cases]	     = 0
,[new_cases_smoothed]	     = 0
,[total_deaths]	     = 0
,[new_deaths]	     = 0
,[new_deaths_smoothed]	     = 0
,[total_cases_per_million]	     = 0
,[new_cases_per_million]	     = 0
,[new_cases_smoothed_per_million]	     = 0
,[total_deaths_per_million]	     = 0
,[new_deaths_per_million]	     = 0
,[new_deaths_smoothed_per_million]	     = 0
,[reproduction_rate]	     = 0
,[icu_patients]	     = 0
,[icu_patients_per_million]	     = 0
,[hosp_patients]	     = 0
,[hosp_patients_per_million]	     = 0
,[weekly_icu_admissions]	     = 0
,[weekly_icu_admissions_per_million]	     = 0
,[weekly_hosp_admissions]	     = 0
,[weekly_hosp_admissions_per_million]	     = 0
,[new_tests]	     = 0
,[total_tests]	     = 0
,[total_tests_per_thousand]	     = 0
,[new_tests_per_thousand]	     = 0
,[new_tests_smoothed]	     = 0
,[new_tests_smoothed_per_thousand]	     = 0
,[positive_rate]	     = 0
,[tests_per_case]	     = 0
,[tests_units]	     = 0
,[total_vaccinations]	     = 0
,[people_vaccinated]	     = 0
,[people_fully_vaccinated]	     = 0
,[total_boosters]	     = 0
,[new_vaccinations]	     = 0
,[new_vaccinations_smoothed]	     = 0
,[total_vaccinations_per_hundred]	     = 0
,[people_vaccinated_per_hundred]	     = 0
,[people_fully_vaccinated_per_hundred]	     = 0
,[total_boosters_per_hundred]	     = 0
,[new_vaccinations_smoothed_per_million]	     = 0
,[new_people_vaccinated_smoothed]	     = 0
,[new_people_vaccinated_smoothed_per_hundred]	     = 0
,[stringency_index]	     = 0
,[population]	     = 0
,[population_density]	     = 0
,[median_age]	     = 0
,[aged_65_older]	     = 0
,[aged_70_older]	     = 0
,[gdp_per_Capita]	     = 0
,[extreme_poverty]	     = 0
,[cardiovasc_death_rate]	     = 0
,[diabetes_prevalence]	     = 0
,[female_smokers]	     = 0
,[male_smokers]	     = 0
,[handwashing_facilities]	     = 0
,[hospital_beds_per_thousand]	     = 0
,[life_expectancy]	     = 0
,[human_development_index]	     = 0
,[excess_mortality_cumulative_absolute]	     = 0
,[excess_mortality_cumulative]	     = 0
,[excess_mortality]	     = 0
,[excess_mortality_cumulative_per_million]	     = 0 
Where [total_cases] IS NULL
OR[continent]	IS NULL
OR[location]	     IS NULL
OR[date]	     IS NULL
OR[total_cases]	     IS NULL
OR[new_cases]	     IS NULL
OR[new_cases_smoothed]	     IS NULL
OR[total_deaths]	     IS NULL
OR[new_deaths]	     IS NULL
OR[new_deaths_smoothed]	     IS NULL
OR[total_cases_per_million]	     IS NULL
OR[new_cases_per_million]	     IS NULL
OR[new_cases_smoothed_per_million]	     IS NULL
OR[total_deaths_per_million]	     IS NULL
OR[new_deaths_per_million]	     IS NULL
OR[new_deaths_smoothed_per_million]	     IS NULL
OR[reproduction_rate]	     IS NULL
OR[icu_patients]	     IS NULL
OR[icu_patients_per_million]	     IS NULL
OR[hosp_patients]	     IS NULL
OR[hosp_patients_per_million]	     IS NULL
OR[weekly_icu_admissions]	     IS NULL
OR[weekly_icu_admissions_per_million]	     IS NULL
OR[weekly_hosp_admissions]	     IS NULL
OR[weekly_hosp_admissions_per_million]	     IS NULL
OR[new_tests]	     IS NULL
OR[total_tests]	     IS NULL
OR[total_tests_per_thousand]	     IS NULL
OR[new_tests_per_thousand]	     IS NULL
OR[new_tests_smoothed]	     IS NULL
OR[new_tests_smoothed_per_thousand]	     IS NULL
OR[positive_rate]	     IS NULL
OR[tests_per_case]	     IS NULL
OR[tests_units]	     IS NULL
OR[total_vaccinations]	     IS NULL
OR[people_vaccinated]	     IS NULL
OR[people_fully_vaccinated]	     IS NULL
OR[total_boosters]	     IS NULL
OR[new_vaccinations]	     IS NULL
OR[new_vaccinations_smoothed]	     IS NULL
OR[total_vaccinations_per_hundred]	     IS NULL
OR[people_vaccinated_per_hundred]	     IS NULL
OR[people_fully_vaccinated_per_hundred]	     IS NULL
OR[total_boosters_per_hundred]	     IS NULL
OR[new_vaccinations_smoothed_per_million]	     IS NULL
OR[new_people_vaccinated_smoothed]	     IS NULL
OR[new_people_vaccinated_smoothed_per_hundred]	     IS NULL
OR[stringency_index]	     IS NULL
OR[population]	     IS NULL
OR[population_density]	     IS NULL
OR[median_age]	     IS NULL
OR[aged_65_older]	     IS NULL
OR[aged_70_older]	     IS NULL
OR[gdp_per_Capita]	     IS NULL
OR[extreme_poverty]	     IS NULL
OR[cardiovasc_death_rate]	     IS NULL
OR[diabetes_prevalence]	     IS NULL
OR[female_smokers]	     IS NULL
OR[male_smokers]	     IS NULL
OR[handwashing_facilities]	     IS NULL
OR[hospital_beds_per_thousand]	     IS NULL
OR[life_expectancy]	     IS NULL
OR[human_development_index]	     IS NULL
OR[excess_mortality_cumulative_absolute]	     IS NULL
OR[excess_mortality_cumulative]	     IS NULL
OR[excess_mortality]	     IS NULL
OR[excess_mortality_cumulative_per_million]	     IS NULL


1: show the total salaries of individual countries
2: show the total salaries by gender
3: show the highest salaries 
4: show the total number of records in the table 
5: show the lowest salary in the table 
6: show the average salary in the table
7: show the total salaries of individual countries (repeated)
**/

drop Table if exists Employees
Create Table Employees  
(  
Id int primary key identity(1, 1),  
Name varchar(50), 
Gender varchar(10),  
Salary int,  
Country varchar(10)  
)  
Insert Into Employees Values ('Usama', 'Male', 5000, 'USA')  
Insert Into Employees Values ('Safwan', 'Male', 4500, 'India')  
Insert Into Employees Values ('Gulraiz', 'Female', 5500, 'USA')  
Insert Into Employees Values ('Ayesha', 'Female', 4000, 'India')  
Insert Into Employees Values ('Anas', 'Male', 3500, 'India')  
Insert Into Employees Values ('Areeha', 'Female', 5000, 'UK')  
Insert Into Employees Values ('Raza', 'Male', 6500, 'UK')  
Insert Into Employees Values ('Eeman', 'Female', 7000, 'USA')  
Insert Into Employees Values ('Faseeh', 'Male', 5500, 'UK')  
Insert Into Employees Values ('Hassan', 'Male', 5000, 'USA')

select *
from Employees