--В каком месяце была рекордная общая выручка по продуктам 
--с названиями, которые начинаются на Chef Anton?

Select top(1) sum(Quantity*UnitPrice*(1-Discount)) AS Revenue,
case when MONTH(OrderDate) = '1' then 'January'
     when MONTH(OrderDate) = '2' then 'February'
     when MONTH(OrderDate) = '3' then 'March'
     when MONTH(OrderDate) = '4' then 'April'
     when MONTH(OrderDate) = '5' then 'May'
     when MONTH(OrderDate) = '6' then 'June'
     when MONTH(OrderDate) = '7' then 'July'
     when MONTH(OrderDate) = '8' then 'August'
     when MONTH(OrderDate) = '9' then 'September'
     when MONTH(OrderDate) = '10' then 'October'
     when MONTH(OrderDate) = '11' then 'November'
     when MONTH(OrderDate) = '12' then 'December'
end as mounth_order, YEAR(OrderDate) as year_order            
from Orders as t1 join [Order Details] as t2 
on t1.OrderID = t2.OrderID where t2.ProductID in 
(Select ProductID from Products where ProductName like 'Chef Anton%')
group by MONTH(OrderDate), YEAR(OrderDate) order by Revenue Desc

