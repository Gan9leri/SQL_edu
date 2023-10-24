--Посчитайте суммарный размер фактической скидки по каждому заказу (не в процентах/не в долях). 
--У скольких заказов скидка составила больше 3 000?
--Примечание: В столбце Discount указана скидка в долях. 
--Подумайте как расcчитать фактическую скидку.

Select count(OrderID) as count_orders from(
Select OrderID, (sum(Quantity*UnitPrice) - sum(Quantity*UnitPrice*(1-Discount)))  as dis 
from [Order Details] group by OrderID 
having (sum(Quantity*UnitPrice) - sum(Quantity*UnitPrice*(1-Discount))) > 3000) as my_table