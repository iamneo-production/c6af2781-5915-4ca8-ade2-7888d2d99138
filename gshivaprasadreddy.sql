desc ELECTION;
--one
SELECT YEAR, SUM(CASE WHEN CAND_SEX = 'F' THEN 1 ELSE 0 END) AS FemaleCandidateCount
FROM ELECTION
GROUP BY YEAR;

--twos
select ST_NAME, year, Count(*)
as TotalCandidates from election
group by ST_NAME, year;

--three--
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

