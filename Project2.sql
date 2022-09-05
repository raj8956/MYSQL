-- SQL Joins-- 
 use info;
 select p.first_name, p.last_name, p.city, s.division, s.region
 from people p 
 inner join state s 
 on p.state_code = s.state_abbrev
 order by region asc;
 
 
 select concat(p.first_name, "- ", p.last_name) as "Fullname",  s.region, p.company
 from people p
 inner join state s on
 p.state_code = s.state_abbrev;


 select s.region, count(region) as "Num. of Company Benongs to region"
 from people p
 inner join state s on
 p.state_code = s.state_abbrev 
 GROUP BY region;
 
  select concat(p.first_name, "- ", p.last_name) as "Fullname",  s.region, p.company, p.quiz_points
 from people p
 inner join state s on
 p.state_code = s.state_abbrev
 group by city
 having quiz_points > 80
 order by first_name 
 limit 10;
 
 
 -- string functions
use info;
select first_name, replace(first_name, 'first__name', '') as "First_name fixed"
from people;

use info;
select upper(first_name), lower(last_name)
from people;

-- use of replace()-- 
select city, replace(city, "City", '') as "City1"     -- Remove the city from New York city-- 
from people;

-- Using Substring-- 
 select first_name, substr(first_name,1,3)
 from people;
 
  select last_name, substring(last_name,1,3)
 from people;
 
 
 /*CaseSatement*/
use info;
select first_name, last_name, quiz_points, age,
case
WHEN age BETWEEN 0 and 25 then "Adult"
when age between 21 and 40 then "Young"
else	"Old"
end as "remarks"
from people
ORDER BY remarks;

select first_name, last_name, quiz_points,
case
when
quiz_points > 80 then "A"
when quiz_points > 60 then "B"
when quiz_points > 40 Then "C"
else "fail"
end as "Grade"
from people
order by first_name;
