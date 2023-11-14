--Выведите имена, фамилии сотрудников и обращения (TitleOfCourtesy). 
--Далее с помощью выражения CASE добавьте временный столбец Gender. 
--Если обращение Ms. или Mrs., то gender - 'women', а если обращение Mr. или Dr., 
--то gender - 'men'. Затем с помощью вложенного запроса посчитайте кол-во мужчин и женщин. 
--Сколько сотрудников женского пола?

with gender_tab as (
Select FirstName, LastName, TitleOfCourtesy,
case when TitleOfCourtesy in ('Ms.', 'Mrs.') then 'woman'
     when TitleOfCourtesy in ('Mr.', 'Dr.') then 'man'
end as Gender
from Employees
)
Select count(Gender) as woman from gender_tab where Gender = 'woman'
