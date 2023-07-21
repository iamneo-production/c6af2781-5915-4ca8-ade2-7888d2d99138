--one
Select year,Count(*) AS FemaleCandidateCount
from election
where cand_sex='F'
group by year;
--end

-two
SELECT ST_NAME, YEAR, COUNT(*) AS TotalCandidates FROM ELECTION
GROUP BY ST_NAME, YEAR;
--end

--three
SELECT ST_NAME, SUM(TOTVOTPOLL) AS TotalVotes FROM ELECTION
WHERE YEAR = 1987 AND PARTYNAME = 'BJP'
GROUP BY ST_NAME;
--end

--four
SELECT ST_NAME, COUNT(*) AS TotalCandidates
FROM ELECTION
WHERE YEAR = 2004
GROUP BY ST_NAME;
--end

--five
SELECT PARTYNAME, SUM(TOTVOTPOLL) AS TotalVotes
FROM ELECTION
WHERE YEAR = 2014 AND ST_NAME = 'UTTAR PRADESH'
GROUP BY PARTYNAME
ORDER BY TotalVotes DESC
Fetch First 5 rows only;
--end