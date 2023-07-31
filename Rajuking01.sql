--1
select year,count(*) as males from election
where cand_sex='F' group by year;

--2
SELECT ST_NAME,YEAR,COUNT(*)AS numberofcandidates from ELECTION
group by st_name, year;

--3
SELECT ST_NAME,sum(totvotpoll) AS TOT_Votes FROM ELECTION
WHERE YEAR=1987 AND PARTYNAME='BRS'
GROUP BY ST_NAME;

--4
select st_name, count(*) as total_candidates from election
where year=2004
group by st_name;

--5
select partyname,sum(totvotpoll) as total_vot from ELECTION
where year=2014 and st_name='TELANGANA'
group by PARTYNAME
order by total_vot DESC
FETCH first 5 rows only;
