# Write your MySQL query statement below
-- select s0.Score,t1.Ranking as Rank
-- from Scores s0
-- left join (
            -- select distinct s1.Score as Score, count(1)+1 as Rank
            -- from Scores s1
            -- inner join Scores s2
            -- on s1.Score = s2.Score 
            -- where s2.Score < s1.Score
            -- group by s1.Score
--             )  t1
-- on s0.Score= t1.u_score
------ dont know why the above solution wont work
select sc2.Score,
        (select count(1)+1 from(select distinct Score from Scores) as u_score where Score>sc2.Score) as Rank
from Scores sc2
order by sc2.Score Desc
