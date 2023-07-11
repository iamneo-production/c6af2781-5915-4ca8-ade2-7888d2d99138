Select Year, Count(*) AS FemaleCandidateCount
from election
where cand_sex='F'
group by year;
select * from election;