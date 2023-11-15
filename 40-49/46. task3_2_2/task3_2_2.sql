--Посчитайте какое количество заказов было сделано в 1997 году по кварталам. 
--Сколько заказов было сделано в четвертом квартале?
with quarter_tab as (
Select OrderID, OrderDate,
case when month(OrderDate) in (1,2,3) then 'First'
     when month(OrderDate) in (4,5,6) then 'Second'
     when month(OrderDate) in (7,8,9) then 'Third'
     when month(OrderDate) in (10,11,12) then 'Fourth'
end as Quarter_of_the_year 
from Orders where year(OrderDate) = '1997'
)
Select count(OrderID) as count_orders, Quarter_of_the_year
from quarter_tab group by Quarter_of_the_year
