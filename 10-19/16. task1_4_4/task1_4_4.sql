--Посчитайте кол-во уникальных профессий клиентов, 
--проживающих в Великобритании.

Select count(distinct ContactTitle) as count_contacttitle
from Customers where Country = 'UK'