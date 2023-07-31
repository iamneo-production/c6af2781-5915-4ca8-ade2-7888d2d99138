--1
select year,count(*) as fe_males_votes from election
where cand_sex='F' group by year;

--2
SELECT ST_NAME,YEAR,COUNT(*)AS num_of_candi_ from ELECTION
group by st_name, year;

--3
SELECT ST_NAME,sum(totvotpoll) AS Tot_Vo_tes_ FROM ELECTION
WHERE YEAR=1987 AND PARTYNAME='BRS'
GROUP BY ST_NAME;

--4
select st_name, count(*) as tot_can_di_ from election
where year=2004
group by st_name;

--5
select partyname,sum(totvotpoll) as tot_vot_ from ELECTION
where year=2014 and st_name='TELANGANA'
group by PARTYNAME
order by tot_vot_ DESC
FETCH first 5 rows only;


--
