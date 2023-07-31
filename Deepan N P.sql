--one
Select year,Count(*) AS female_can_count_
from election
where cand_sex='F'
group by year;
--end

-two
SELECT ST_NAME, YEAR, COUNT(*) AS Tot_can_ FROM ELECTION
GROUP BY ST_NAME, YEAR;
--end

--three
SELECT ST_NAME, SUM(TOTVOTPOLL) AS Tot_Vot_ FROM ELECTION
WHERE YEAR = 1987 AND PARTYNAME = 'BJP'
GROUP BY ST_NAME;
--end

--four
SELECT ST_NAME, COUNT(*) AS Tot_Candi_
FROM ELECTION
WHERE YEAR = 2004
GROUP BY ST_NAME;
--end

--five
SELECT PARTYNAME, SUM(TOTVOTPOLL) AS Tot_vot_
FROM ELECTION
WHERE YEAR = 2014 AND ST_NAME = 'UTTAR PRADESH'
GROUP BY PARTYNAME
ORDER BY TotalVotes DESC
Fetch First 5 rows only;
--end
