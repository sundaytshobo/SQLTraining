SELECT TOP (1000) [Year]
      ,[City]
  FROM [Emade_Dev].[dbo].[Games]


use Emade_Dev
Go

--how to check data 
select *
from School_Grades 

  --Highest Year in table
    select MAX(year) as highest_year
  from noble
 
 --show highest year and city
 --Outer Query or Outside Query or main query or external query
 select*
 from Games
 where Year =
 (
		 --Inner query or inside query or sub query
		 select MAX(year) as highest_year
		from Games
)

--Update table record
update Games
set Year = 1999
Where Year = 2000


--Highest population from the world table
select*
from World
where Gdp =

		 --Inner query or inside query or sub query
				 select MAX(Gdp) as highest_gdp
				from World
)



drop table if exists [Results]
create table [Results]
(
ID int not null,
NAME varchar (50) null,
SCORE int not null
)

--How to create a table
create table [School_Grades]
(
ID int not null,
NAME varchar (50) null,
SCORE int not null
)

Select *
From School_Grades
Where ID = 1

--How to show unique records in a table
Select Distinct* 
From School_Grades
Where ID = 1

--How to show unique records in a table
Select Distinct Id, Name, SCORE 
From School_Grades
Where ID = 1

--How to show unique records in a table
Select Id, Name, SCORE 
From School_Grades
Where ID = 1
Group By Id, Name, SCORE

--load data
insert into [School_Grades]
(
ID, 
NAME,
SCORE
)
values
(1, 'Simisola', 60),
(2, 'Ivan', 80),
(3, 'Metodija', 52),
(4, 'Callum', 98),
(5, 'Leia', 84),
(6, 'Aparecida', 82),
(7, 'Ursula', 69),
(8, 'Ramazan', 78),
(9, 'Corona', 87),
(10, 'Alise', 57),
(11, 'Galadriel', 89),
(12, 'Merel', 99),
(13, 'Cherice', 55),
(14, 'Nithya', 81),
(15, 'Elsad', 71),
(16, 'Liisi', 90),
(17, 'Johanna', 90),
(18, 'Anfisa', 90),
(19, 'Ryosuke', 97),
(20, 'Sakchai', 61),
(21, 'Elbert', 63),
(22, 'Katelyn', 51)

--show table 
select*
from Results

/** When score is 94 or higher, the row will have the value of A. 
If  score is  94 gets an  A, If  score is  90 gets an  A- ,
If  score is  87 gets an  B+  ,If  score is  83 gets an  B  ,
If  score is  80 gets an  B- ,If  score is  77 gets an  C+ ,
If  score is  73 gets an  C , If  score is  70 gets an  C- ,
If  score is  67 gets an  D+ ,If  score is  60 gets an  D,
If students get none of these scores, you should assign an F.
Give each student a grade, which we will add in a new column named grade. 
You can show the grades from highest to lowest
**/

Select Distinct * , 
CASE WHEN SCORE >= 94 THEN 'A'   
WHEN SCORE >= 90 THEN 'A-' 
WHEN SCORE >= 87 THEN 'B+' 
WHEN SCORE >= 83 THEN 'B' 
WHEN SCORE >= 80 THEN 'B-' 
WHEN SCORE >= 77 THEN 'C+' 
WHEN SCORE >= 73 THEN 'C' 
WHEN SCORE >= 70 THEN 'C-' 
WHEN SCORE >= 67 THEN 'D+' 
WHEN SCORE >= 60 THEN 'D' 
Else 'F' 
End As Grade
From Results


--How to create a view
Create View
vwstudentgrades
As  
Select Distinct * , 
CASE WHEN SCORE >= 94 THEN 'A'   
WHEN SCORE >= 90 THEN 'A-' 
WHEN SCORE >= 87 THEN 'B+' 
WHEN SCORE >= 83 THEN 'B' 
WHEN SCORE >= 80 THEN 'B-' 
WHEN SCORE >= 77 THEN 'C+' 
WHEN SCORE >= 73 THEN 'C' 
WHEN SCORE >= 70 THEN 'C-' 
WHEN SCORE >= 67 THEN 'D+' 
WHEN SCORE >= 60 THEN 'D' 
Else 'F' 
End As Grade
From Results

Select *
fROM vwstudentgrades
Where Grade = 'A'

--Using wild card
Select *
fROM vwstudentgrades
Where Grade like '%B%'

--Using wild card STUDENTS WITH A B 
Select *
fROM vwstudentgrades
Where Grade like '%B%'

--Using wild card STUDENTS THAT HAVE O IN THEIR NAME
Select *
fROM vwstudentgrades
Where Name like '%O%'

--Using wild card STUDENTS NAME THAT STARTS WITH M
Select *
fROM vwstudentgrades
Where Name like  'M%'

--Using wild card STUDENTS NAME THAT ENDS WITH AN A
Select *
fROM vwstudentgrades
Where Name like '%A'

select
ID,
Name,
Score,
Case
When Score >= 60 then 'Pass'
When Score <= 60 then 'Fail'
End as Pass
from Results

--How to show the number of students that pass
--How to create a view
create View
vwPassOrFail 
as
select* , 
Case
When Score >= 60 then 'Pass'
When Score <= 60 then 'Fail'
End as PassOrFail
from Results

select*
from vwPassOrFail

select PassOrFail as Grade,
count (passorfail) as numberofstudents
from vwPassOrFail
group by PassOrFail

CASE STATEMENTS