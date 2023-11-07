--Объедините список городов сотрудников и список городов клиентов в один список. 
--Сколько уникальных городов получилось в результате?

Select count(*) as count_city from (
Select City from Employees
UNION
Select City from Customers
) as city_tab