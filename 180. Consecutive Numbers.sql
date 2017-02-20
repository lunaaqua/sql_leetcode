# Write your MySQL query statement below
select distinct t1.Num as ConsecutiveNums from
    (select l1.Num 
    from Logs l1
    left join Logs l2
    on l1.Id= l2.Id-1
    left join Logs l3
    on l2.Id= l3.Id-1
    where l1.Num= l2.Num and l2.Num=l3.Num) t1
