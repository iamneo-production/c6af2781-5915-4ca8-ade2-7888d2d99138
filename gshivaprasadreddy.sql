desc ELECTION;
--one
SELECT YEAR, SUM(CASE WHEN CAND_SEX = 'F' THEN 1 ELSE 0 END) AS FemaleCandidateCount
FROM ELECTION
GROUP BY YEAR;

--two
SELECT ST_NAME, YEAR, COUNT(*) AS total_candidates
FROM ELECTION
GROUP BY ST_NAME, YEAR;

--three
SELECT ST_NAME, SUM(TOTVOTPOLL) AS Total_Votes_ FROM ELECTION
WHERE YEAR = 1987 AND PARTYNAME = 'BJP'
GROUP BY ST_NAME;

--fourth
SELECT ST_NAME, COUNT(*) AS Ttotal_Candidates
FROM ELECTION
WHERE YEAR = 2004
GROUP BY ST_NAME;


--fifths
SELECT PARTYNAME, SUM(TOTVOTPOLL) AS Total_Votes
FROM ELECTION
WHERE ST_NAME = 'UTTAR PRADESH' AND YEAR = 2014
GROUP BY PARTYNAME
ORDER BY Total_Votes DESC
FETCH FIRST 5 ROWS ONLY;


