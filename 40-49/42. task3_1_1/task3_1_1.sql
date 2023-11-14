--Выведите имена сотрудников, страны и регионы. С помощью выражения CASE добавьте 
--новый временный столбец Region и замените пустые значения NULL на значения 'not defined'. 
--У скольких сотрудников регион равен 'not defined'?

with null_table as (
Select EmployeeID, FirstName, Country,
case when Region is null then 'not defined' 
     when Region is not null then Region
end as Region
from Employees
)
Select count(EmployeeID) as count_employeed from null_table where Region = 'not defined'