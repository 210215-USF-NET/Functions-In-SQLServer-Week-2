--drop table people;

CREATE TABLE people (
    id int identity primary key,
    name varchar(100) NOT NULL,
    birthDate DATE,
);


--Adding seed data
insert into people (name, birthDate) values 
('Kevin', '1996-11-12'), ('Alan', '1994-04-13'),('Weston', '1997-07-08'),('Kevin', '1996-02-01'),('Steve', '1995-09-26');

select * from people;

--list out function usage and custom function examples below here:

-- Kevin - 
SELECT name, REVERSE(name) AS Reverse  
FROM people 
ORDER BY name;  
SELECT name, Upper(name) AS Upper  
FROM people 
ORDER BY name;  

insert into people (name , birthdate)values
('Test',getdate ())	;

select year((select birthDate from people where id = 1));
select month((select birthDate from people where id = 1));
select day((select birthDate from people where id = 1));

-- Weston - Aggregate

-- Alan - Tabular

-- Frank - Custom

-- Steve - summary stuff/holistic overview (not sure if Steve is doing a code demo portion lol)
