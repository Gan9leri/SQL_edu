--Клиент Simon Crowther утверждает, что оформил заказ 29 апреля 1998 года,
--но заказ пришел неполный - часть товаров отсутствует. Найдите всю информацию 
--по сотруднику, который оформил этот заказ, чтобы связаться с ним. 
--Как зовут этого сотрудника?

Select FirstName, LastName from Employees where EmployeeID in (
Select EmployeeID from Orders where CustomerID in 
(Select CustomerID from Customers where ContactName = 'Simon Crowther')
and OrderDate = '1998-04-29')



