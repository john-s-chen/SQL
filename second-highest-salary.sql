select max(Salary) as SecondHighestSalary 
from (select Salary, (rank() over (order by Salary desc)) as rank from Employee) e
where rank = 2


