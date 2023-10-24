--Найдите самую популярную профессию среди клиентов.

Select count(CustomerID) as count_customers, ContactTitle from Customers 
group by ContactTitle order by count_customers DESC