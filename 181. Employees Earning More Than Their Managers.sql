# Write your MySQL query statement below
select em1.Name as Employee
from Employee em1
left join Employee em2 on em1.ManagerId= em2.Id
where em2.Salary < em1.Salary