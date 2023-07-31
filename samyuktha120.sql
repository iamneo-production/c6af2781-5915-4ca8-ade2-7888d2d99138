--1
select year,count(*) as fem__ from election
where cand_sex='F' group by year;

--2
SELECT ST_NAME,YEAR,COUNT(*)AS num__of____ca from ELECTION
group by st_name, year;

--3
SELECT ST_NAME,sum(totvotpoll) AS To___Vo FROM ELECTION
WHERE YEAR=1987 AND PARTYNAME='BRS'
GROUP BY ST_NAME;

--4
select st_name, count(*) as to__can__ from election
where year=2004
group by st_name;

--5
select partyname,sum(totvotpoll) as to___vo__ from ELECTION
where year=2014 and st_name='TELANGANA'
group by PARTYNAME
order by total_vot DESC
FETCH first 5 rows only;
