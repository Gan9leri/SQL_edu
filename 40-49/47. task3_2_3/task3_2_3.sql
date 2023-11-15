--Какое максимальное количество дней прошло с момента заказа (OrderDate) 
--до момента доставки (ShippedDate) среди всех заказов? 
--Если дата доставки не указана, то заказ не доставлен. 
with day_tab as (
Select OrderID, OrderDate, ShippedDate,
case when ShippedDate is not NULL then DATEDIFF(day, OrderDate, ShippedDate)
end as count_days
 from Orders
)
Select max(count_days) as max_days from day_tab