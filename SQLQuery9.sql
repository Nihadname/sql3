create database Company
use Company
create table Employee(
Id int primary key identity,
Fullname nvarchar(255) not null,
Age tinyint check(Age > 0) not null,
Email nvarchar(255) not null unique,
Salary decimal(7,2) not null check(Salary >= 300 AND Salary <= 2000))
