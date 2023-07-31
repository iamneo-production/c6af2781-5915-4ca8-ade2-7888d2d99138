--one
<<<<<<< HEAD:Elayabharathi.sql
Select year,Count(*) AS Female_Count 
=======
Select year,Count(*) AS Fem_Candid_Count
>>>>>>> 8e001b5fb0f0e69c9ec55d95987cf8e54ce38c1c:dandusirisha1010.sql
from election
where cand_sex='F'
group by year;
--end

<<<<<<< HEAD:Elayabharathi.sql
-two
SELECT ST_NAME, YEAR, COUNT(*) AS Total_Candidate FROM ELECTION
=======
--two
SELECT ST_NAME, YEAR, COUNT(*) AS Tot_Cand FROM ELECTION
>>>>>>> 8e001b5fb0f0e69c9ec55d95987cf8e54ce38c1c:dandusirisha1010.sql
GROUP BY ST_NAME, YEAR;
--end

--three
<<<<<<< HEAD:Elayabharathi.sql
SELECT ST_NAME, SUM(TOTVOTPOLL) AS Total_Vote FROM ELECTION
=======
SELECT ST_NAME, SUM(TOTVOTPOLL) AS Tot_Vot FROM ELECTION
>>>>>>> 8e001b5fb0f0e69c9ec55d95987cf8e54ce38c1c:dandusirisha1010.sql
WHERE YEAR = 1987 AND PARTYNAME = 'BJP'
GROUP BY ST_NAME;
--end

--four
<<<<<<< HEAD:Elayabharathi.sql
SELECT ST_NAME, COUNT(*) AS TotalCandidate
=======
SELECT ST_NAME, COUNT(*) AS Tot_Cand
>>>>>>> 8e001b5fb0f0e69c9ec55d95987cf8e54ce38c1c:dandusirisha1010.sql
FROM ELECTION
WHERE YEAR = 2004
GROUP BY ST_NAME;
--end

--five
<<<<<<< HEAD:Elayabharathi.sql
SELECT PARTYNAME, SUM(TOTVOTPOLL) AS TotalVote_2014
FROM ELECTION
WHERE YEAR = 2014 AND ST_NAME = 'UTTAR PRADESH'
GROUP BY PARTYNAME
ORDER BY TotalVote_2014 DESC
=======
SELECT PARTYNAME, SUM(TOTVOTPOLL) AS Tot_Vot
FROM ELECTION
WHERE YEAR = 2014 AND ST_NAME = 'UTTAR PRADESH'
GROUP BY PARTYNAME
ORDER BY Tot_Vot DESC
>>>>>>> 8e001b5fb0f0e69c9ec55d95987cf8e54ce38c1c:dandusirisha1010.sql
Fetch First 5 rows only;
--end
