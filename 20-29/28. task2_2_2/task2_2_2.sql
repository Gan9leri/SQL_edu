--Посчитайте кол-во заказов, которые были оформлены сотрудником Andrew Fuller.

Select count(OrderID) as count_orders from Orders as t1 inner join Employees
as t2 on t1.EmployeeID = t2.EmployeeID
where FirstName = 'Andrew' and LastName = 'Fuller'