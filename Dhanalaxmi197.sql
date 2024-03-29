--ONE
SELECT YEAR, COUNT(*) AS
FemaleCandidateCount
from election
where cand_sex='F'
group by year;
--end

--two
select ST_NAME, year, Count(*)
as TotalCandidates from election
group by ST_NAME, year;
--end

--three
Select ST_NAME, sum(TOTVOTPOLL)
as TotalVotes from election
where year=1987 and PARTYNAME='BJP'
group by ST_NAME;
--end

--four--
select ST_NAME, count(*)
as TotalCandidates
from election
where year=2004
group by ST_NAME;
--end

--five --
select PARTYNAME, sum(TOTVOTPOLL)
as TotalVotes from election
where year=2014 and ST_NAME='UTTAR PRADESH'
group by PARTYNAME
order by TotalVotes desc
fetch first 5 rows only;
--end