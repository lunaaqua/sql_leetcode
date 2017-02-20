# Write your MySQL query statement below
select w1.id as Id 
from Weather w1 
left join Weather w2 on w1.Date=w2.Date+ interval 1 day  #add one day must claim day in "interval 1 day"
where w1.Temperature-w2.Temperature>0    
