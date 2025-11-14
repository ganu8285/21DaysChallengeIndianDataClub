
-- first question

select * from patients;

select distinct service from patients;

-- second question

select * from staff;

select distinct role from staff;

-- third question

select * from services_weekly;

select distinct month from services_weekly;


-- daily challenge

select 
    service,
    event,
    count(*) as occurrences
from services_weekly
where event is not null
  and lower(event) <> 'none'
group by service, event
order by occurrences desc;
