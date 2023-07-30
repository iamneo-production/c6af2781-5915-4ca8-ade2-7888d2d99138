select year,count(*) as females from election
where cand_sex='F'
group by year;

select st_name,year,count(*) as tot_candidates from ELECTION
group by st_name,year;

select ST_NAME,sum(TOTVOTPOLL) as Tot_votes From ELECTION 
where year=1987 and partyname='BJP'
group by st_name;

select ST_NAME, count(*) as Total_candidates from ELECTION
where year=2004 
group by st_name;

select PARTYNAME,SUM(TOTVOTPOLL) as total_vot from ELECTION
where year=2014 and st_name='UTTAR PRADESH' 
group by PARTYNAME
order by total_vot DESC
FETCH First 5 rows only;