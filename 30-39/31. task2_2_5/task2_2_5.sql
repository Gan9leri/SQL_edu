-- Выведите имя и фамилию сотрудника, который оформил заказ клиента Francisco Chang.

Select FirstName, LastName from Employees where EmployeeID in
(Select EmployeeID from Orders as t1 join Customers as t2 on
t1.CustomerID = t2.CustomerID
where ContactName = 'Francisco Chang')
