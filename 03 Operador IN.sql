USE ContosoRetailDW
--FILTRANDO COLUNAS RETIRANDO AQUELES QUE TEM 0 FILHOS UTILIZANDO COMANDO "WHERE"

SELECT 
	FirstName,
	NumberCarsOwned AS carros,
	NumberChildrenAtHome AS 'CRIAN�AS EM CASA',
	Gender,
	Education,
	TotalChildren
FROM DimCustomer
		--filtrando clientes espec�ficos usando OPERADORES IN--
WHERE 
NumberChildrenAtHome >= 2
and Education in ('Bachelors', 'Graduate Degree')
and Gender = 'M'
and TotalChildren in (1, 3)


