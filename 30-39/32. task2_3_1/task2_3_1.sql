--В каких городах проживают клиенты, которые не совершили ни одного заказа? 
--Используйте LEFT JOIN для решения задачи. Похожая задача была в видео-уроке. 

Select City from Customers as t1 left join Orders as t2
on t1.CustomerID = t2.CustomerID
where OrderID is null