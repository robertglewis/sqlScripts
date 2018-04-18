--Create Simple Table That Store Birthday Information 
create table birthdays
(
  memID int NOT NULL , 
  fname varchar(50),
  lname varchar(50),
  birthdate date 
)

-- Inserts Members Into The Birthday Table
insert into birthdays (memID,fname,lname,birthdate) values (1,'Daffy','Duck','1981-03-03')
insert into birthdays (memID,fname,lname,birthdate) values (2,'Sheldon','Cooper','1981-01-03')
insert into birthdays (memID,fname,lname,birthdate) values (3,'OJ','Simpson','1981-01-15')
insert into birthdays (memID,fname,lname,birthdate) values (4,'Jerry','Springer','1981-02-15')
insert into birthdays (memID,fname,lname,birthdate) values (5,'John','Wayne','1981-03-15')

-- Counts Total Employees In The & Show Total Number of Monthly Birthdays for Each Month
select COUNT(*) as 'Total Employees In The Table',
SUM (case when month(birthdate) = 1 then 1 else 0 end) as Birthdays_in_January,
SUM (case when month(birthdate) = 2 then 1 else 0 end) as Birthdays_in_February,
SUM (case when month(birthdate) = 3 then 1 else 0 end) as Birthdays_in_March,
SUM (case when month(birthdate) = 4 then 1 else 0 end) as Birthdays_in_April,
SUM (case when month(birthdate) = 5 then 1 else 0 end) as Birthdays_in_May,
SUM (case when month(birthdate) = 6 then 1 else 0 end) as Birthdays_in_June,
SUM (case when month(birthdate) = 7 then 1 else 0 end) as Birthdays_in_July,
SUM (case when month(birthdate) = 8 then 1 else 0 end) as Birthdays_in_August,
SUM (case when month(birthdate) = 9 then 1 else 0 end) as Birthdays_in_September,
SUM (case when month(birthdate) = 10 then 1 else 0 end) as Birthdays_in_October,
SUM (case when month(birthdate) = 11 then 1 else 0 end) as Birthdays_in_November,
SUM (case when month(birthdate) = 12 then 1 else 0 end) as Birthdays_in_December
from dbo.birthdays



