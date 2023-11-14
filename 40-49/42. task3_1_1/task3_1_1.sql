with null_table as (
Select EmployeeID, FirstName, Country,
case when Region is null then 'not defined' 
     when Region is not null then Region
end as Region
from Employees
)
Select count(EmployeeID) as count_employeed from null_table where Region = 'not defined'