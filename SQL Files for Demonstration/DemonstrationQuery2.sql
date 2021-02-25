Create function getNames()
	returns Table
	As
return (Select * from people) 