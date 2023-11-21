--Выведите заказы, которые были оформлены в 1997 году.
--С помощью CASE добавьте временный столбец. 
--Если дата фактической доставки (ShippedDate) больше запланированной даты доставки (RequiredDate), 
--то значение - "delay", а иначе - "in time".
--С помощью вложенного запроса посчитайте сколько заказов были доставлено с задержкой.

with delay_orders_tab as (
Select OrderID,  
case when ShippedDate > RequiredDate then 'delay'
     when ShippedDate < RequiredDate then 'in time'
end as delay_orders
from Orders where OrderDate BETWEEN '1997-01-01' and '1997-12-31'
)
Select count(OrderID) as del_orders from delay_orders_tab where delay_orders = 'delay'