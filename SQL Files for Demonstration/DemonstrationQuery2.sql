Create FUNCTION names
(
	@name varchar(50)
	)

RETURNS VARCHAR(150)
AS
Begin return (Select @name);

END

Select dbo.names(name) as Name, birthDate from people 