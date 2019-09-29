CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        select distinct Salary
        from (select Salary, dense_rank() over(order by Salary desc) as rank from Employee) e
        where rank = @N
    );
END