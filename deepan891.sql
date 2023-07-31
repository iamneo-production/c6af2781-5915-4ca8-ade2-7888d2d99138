--1
select year,count(*) as fe_males_ from election
where cand_sex='F' group by year;

--2
SELECT ST_NAME,YEAR,COUNT(*)AS num_ber_of_can_di_dates_ from ELECTION
group by st_name, year;

--3
SELECT ST_NAME,sum(totvotpoll) AS TOT_Vot_es_ FROM ELECTION
WHERE YEAR=1987 AND PARTYNAME='BRS'
GROUP BY ST_NAME;

--4
select st_name, count(*) as tot_al_can_di_dates from election
where year=2004
group by st_name;

--5
select partyname,sum(totvotpoll) as tot_al_vot_ from ELECTION
where year=2014 and st_name='TELANGANA'
group by PARTYNAME
order by total_vot DESC
FETCH first 5 rows only;
