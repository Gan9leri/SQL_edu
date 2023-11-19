-- Какое максимальное количество заказов в месяц было оформлено одним сотрудником?

with count_orders_tab as (
Select count(OrderID) as count_orders, month(OrderDate) as num_month, year(OrderDate) as num_year, 
LastName, FirstName from Orders as t1 join Employees as t2 
on t1.EmployeeID = t2.EmployeeID 
group by month(OrderDate), year(OrderDate), LastName, FirstName
)
Select max(count_orders) as max_count_orders from count_orders_tab
