--drop table people;

CREATE TABLE people (
    id int identity primary key,
    name varchar(100) NOT NULL,
    birthDate DATE,
);


--Adding seed data
insert into people (name, birthDate) values 
('Kevin', '1996-11-12'), ('Alan', '1994-04-13'),('Weston', '1997-07-08'),('Frank', '1996-02-01'),('Steve', '1995-09-26');

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

-- The cast functions convert all values within the specified column to the specified value type
-- the avg function averages all values in said column to a specific value.
-- avg function cannot take in a date/datetime data type, so we must convert to something it can understand
-- then, the final two casts return the value to it's original data formatting
SELECT CAST(
			CAST(
					AVG(
						CAST(
							--inner layer - cast the Date type to a datetime type
							--datetime tracks individual day values
							CAST(
								birthDate AS DATETIME
								) 
							--middle layer - cast to int, which converts to a total number of days
							AS INT)
						--average the number of days each column has
						) 
					-- return the new int average back to datetime format
					AS DATETIME) 
			-- and finally, return it to it's original formatting
			AS DATE) 
-- name the column something
AS averageBirthday
FROM people;


-- Alan - Tabular

-- Frank - Custom

-- Steve - summary stuff/holistic overview (not sure if Steve is doing a code demo portion lol)
