--Выведите список городов и кол-во проживающих в них клиентов. 
--Оставьте города, в которых проживает больше 4 клиентов. Какие это города?
--Используйте GROUP BY и HAVING.

Select City, count(CustomerID) as count_customers from Customers 
group by City having count(CustomerID) > 4