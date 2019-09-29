/* Write your T-SQL query statement below */

select T.Id 
from Weather as T, Weather as Y 
where T.Temperature > Y.Temperature and datediff(day, T.RecordDate, Y.RecordDate) = -1


