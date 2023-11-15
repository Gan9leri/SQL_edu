--Посчитайте количество клиентов, у которых Французский язык является официальным.
--Это жители страны Франции или города Женевы, который находится в Швейцарии.

Select count(ContactName) as count_customers from Customers
where Country = 'France' or City = 'Genève'

