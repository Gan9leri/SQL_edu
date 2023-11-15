--Выведите клиента, чья должность указана как Owner/Marketing Assistant.
-- С каким сочетанием аргументов функция SUBSTRING() извлечёт из должности
-- только Marketing Assistant?

Select SUBSTRING(ContactTitle, 7, 19) as sub_str from 
(Select ContactName, ContactTitle from Customers
where ContactTitle = 'Owner/Marketing Assistant')
as title_tab