/*
Table: Person

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| PersonId    | int     |
| FirstName   | varchar |
| LastName    | varchar |
+-------------+---------+
PersonId is the primary key column for this table.
Table: Address

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| AddressId   | int     |
| PersonId    | int     |
| City        | varchar |
| State       | varchar |
+-------------+---------+
AddressId is the primary key column for this table.
 

Write a SQL query for a report that provides the following information for each person in the Person table, regardless if there is an address for each of those people:
----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

create table Person (PersonId int,
FirstName varchar(10),
LastName varchar(10))

create table Address(AddressId int, PersonId  int, City varchar(10), State varchar(10)) 

insert into  Person 
values
( 1, 'ABC', 'XYZ'),
(2, 'DEF', 'YZX'),
(3, 'GHI', 'ZYZ');

insert into  Address 
values
( 12, 1,'MUM','MH'),
(13,3, 'BAN', 'KA'),
(11,0, 'SRI', 'JK');

select * from Person
select * from Address

/*select p.FirstName, p.LastName, a.City, a.State from Person p join Address a on p.PersonId=a.PersonId;*/
select p.FirstName, p.LastName, a.City, a.State from Person p left join Address a on p.PersonId=a.PersonId;
