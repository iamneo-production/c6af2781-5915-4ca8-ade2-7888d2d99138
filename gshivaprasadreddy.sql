--ONE
SELECT YEAR, COUNT(*) AS
Female_Candidate_Count
from election
where cand_sex='F'
group by year;
--end

--twos
select ST_NAME, year, Count(*)
<<<<<<< HEAD
as Total_Candidates from election
group by ST_NAME, year;
--end

--three
Select ST_NAME, sum(TOTVOTPOLL)
as Total_Votes from election
where year=1987 and PARTYNAME='BJP'
group by ST_NAME;
--end
=======
as TotalCandidates from election
group by ST_NAME, year;

--three
SELECT ST_NAME, SUM(TOTVOTPOLL) AS Tol_Votes_ FROM ELECTION
WHERE YEAR = 1987 AND PARTYNAME = 'BJP'
GROUP BY ST_NAME;

--fourth
SELECT ST_NAME, COUNT(*) AS Ttol_Candi_
FROM ELECTION
WHERE YEAR = 2004
GROUP BY ST_NAME;


--fifth--
SELECT PARTYNAME, SUM(TOTVOTPOLL) AS Tol_Vot
FROM ELECTION
WHERE ST_NAME = 'UTTAR PRADESH' AND YEAR = 2014
GROUP BY PARTYNAME
ORDER BY Tol_Vot DESC
FETCH FIRST 5 ROWS ONLY;
>>>>>>> 55b80130a9199f3c8b3b82df1966370899c70f55

--four
select ST_NAME, count(*)
as Total_Candidates
from election
where year=2004
group by ST_NAME;
--end

--five --
select PARTYNAME, sum(TOTVOTPOLL)
as Total_Votes from election
where year=2014 and ST_NAME='UTTAR PRADESH'
group by PARTYNAME
order by Total_Votes desc
fetch first 5 rows only;
--end
