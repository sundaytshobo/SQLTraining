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