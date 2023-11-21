-- Как зовут сотрудников, которые когда-либо оформляли заказ на клиента Martín Sommer?

Select distinct FirstName, LastName from Employees as t1 join Orders as t2
on t1.EmployeeID = t2.EmployeeID where t2.CustomerID in 
(Select CustomerID from Customers where ContactName = 'Martín Sommer')