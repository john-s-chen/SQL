/* Write your T-SQL query statement below */

select Name as Customers 
from Customers 
left join Orders 
on Orders.CustomerId = Customers.Id
where isnumeric(Orders.CustomerId) = 0