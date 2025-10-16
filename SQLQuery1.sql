SELECT a.DepartmentID,
	   c.BusinessEntityID,
	   c.Gender,
	   c.JobTitle
FROM HumanResources.Department a
JOIN HumanResources.EmployeeDepartmentHistory b
ON a.DepartmentID = b.DepartmentID
JOIN HumanResources.Employee c
ON b.BusinessEntityID = c.BusinessEntityID
ORDER BY 1 