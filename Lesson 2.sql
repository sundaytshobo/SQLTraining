/**
crud
crud means create,
read,
updates,
delete
**/

--How to completely remove a record from the database
drop table if exists pet

--how to create a table
create table Pet
(
PetId Int Not Null, 
PetName Varchar(50) Null,
PetColor Varchar(50) Null, 
PetAge Int Not Null,
PetGender Varchar(50) Null,
)

--How to load data into a table
Insert into 'Pet'
(
PetId, PetName, PetColor,PetAge, PetGender
)
Values
(1,'Jake', 'brown',5,'M'),
(2,'Will', 'green',7,'M'),
(3,'Tally','grey',6, 'M'),
(4,'Marc', 'black',4,'F'),
(5,'Tamron','black',7,'F'),
(6,'Jett','blue',3,'M'),
(7,'Aladdin','brown',2,'F'),
(8,'Howie','Red',7,'M'),
(9,'Genie','Yellow',8,Null),
(10,Null,'Black',1,'F')



--How to view Pet Table
select*
from pet

--How many records are in the table 
select COUNT(*) as total_count
from Pet

--Show mw how many pets are M
select*
from Pet
where PetGender = 'M'

--How to show pets with no color
select*
From Pet
where PetColor is Null 

--How to show me pets without names
select*
From Pet
where PetName is Null

--How to show me pets with names
select*
From Pet
where PetName is not Null

--How to show me pets with Gender
select*
From Pet
where PetGender is not Null

--How to show pets that are not male
select*
From Pet
where PetGender <> 'M'

--How to show pets that are not pink
select*
From Pet
where PetColor <> 'Pink'

--How to show pets that are not pink
select*
From Pet
where PetColor != 'Pink'

--Show pets that are blue and red
select*
From Pet
where PetColor in ('Blue','Red')

--Show pets that are blue and red
select*
From Pet
where PetColor not in ('Blue','Red')

--Show pets that are in 3,4,5,6,7
select*
From Pet
where PetId in (3,4,5,6,7)

--Show pets that are in 3,5,6,7
select*
From Pet
where PetId between 3 and 7


--Show pets that are in 3,5,6,7
select*
From Pet
where PetId >= 3 and PetId <=7

--Case Statement 
--Any pet that is age 7 below are Bad, Any pet that are age 8 to 9 are good, any pet that is age 9 but below 15 are better pet than any other pet are great pet
--Make a new colunmn called PetStatus

--How to create a view
create view vwPetStatus as 

select 
PetId,
PetName,
PetColor,
PetAge,
PetGender,
Case
When PetAge < 7 then 'bad'
When PetAge between 8 and 9 then 'Good'
When PetAge >=9 and PetAge <15 then 'Better'
When PetAge >= 15 then 'Great'
End as PetStatus
from Pet

--how to run a view
select*
from vwPetStatus

--how to update a record in a table
update Pet
set PetColor = 'White'
where PetColor is null

--How to view Pet Table
select*
from Pet

--How to remove record from a table
delete
from Pet
where PetAge = 8

--How to remove all record from a table
delete
from Pet

/**
Case Statement for Business
If the age of the customer is more than 30, it returns Gen X and if the age of the customer is 23, 34, 25, should be Jan Z,
If the age of the customer is 22, then it should be Gen Alpha,
If the age of the customer is 27, then it should be Gen Y and make sure to name the field as generation
**/
select*
From Business
-
select
ID,
Name,
Age,
Address,
Salary,
Case
When Age > 30 Then 'Gen x'
When Age between 23 and 25 Then 'Gen Z'