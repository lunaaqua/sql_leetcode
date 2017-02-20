# Write your MySQL query statement below
Delete p2
from Person p1
join Person p2 on p1.Email=p2.Email   # mysql has no full join
where p2.Id>p1.Id
