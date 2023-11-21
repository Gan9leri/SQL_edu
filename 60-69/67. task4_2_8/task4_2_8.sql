--Найдите сотрудника, у которого с момента оформления первого заказа до 
--момента оформления последнего заказа прошло больше всего времени. 
--Сколько дней прошло?

Select top(1) LastName, FirstName, DATEDIFF(day, min(OrderDate), max(OrderDate)) as day_dif
from Employees as t1 join Orders as t2 on t1.EmployeeID = t2.EmployeeID
group by LastName, FirstName order by day_dif desc


