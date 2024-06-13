SQL_ClientFilterPro
ClientFilterPro é uma ferramenta poderosa e eficiente para filtragem de clientes específicos utilizando SQL. Este projeto foi desenvolvido para ajudar empresas a segmentarem sua base de dados de clientes de maneira precisa, permitindo a extração de informações valiosas para análises e estratégias de marketing.


USE ContosoRetailDW
--FILTRANDO COLUNAS RETIRANDO AQUELES QUE TEM 0 FILHOS UTILIZANDO COMANDO "WHERE"

SELECT 
	FirstName,
	NumberCarsOwned AS carros,
	NumberChildrenAtHome AS 'CRIANÇAS EM CASA',
	Gender,
	Education,
	TotalChildren
FROM DimCustomer
		--filtrando clientes específicos usando OPERADORES IN--
WHERE 
NumberChildrenAtHome >= 2
and Education in ('Bachelors', 'Graduate Degree')
and Gender = 'M'
and TotalChildren in (1, 3)


