--Выведите имена клиентов и должности. С помощью CASE добавьте временный столбец prof_group. 
--Если в должности присутствует слово Marketing, тогда значение - 'Marketing'. 
--Если в должности присутствует слово Sales, тогда значение - 'Sales'. 
--В остальных случаях значение - 'Other'. 
--Посчитайте количество клиентов в разрезе групп профессий.

with prof_group_tab as (
Select ContactName, ContactTitle,
case when ContactTitle like '%Marketing%' then 'Marketing'
     when ContactTitle like '%Sales%' then 'Sales'
     else 'Other'
end as prog_group
from Customers
)
Select count(ContactName) as count_customers, prog_group from prof_group_tab
group by prog_group