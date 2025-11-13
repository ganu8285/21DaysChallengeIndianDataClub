select * from patients;
select * from services_weekly;

select service, count(patients_admitted) as total_patients,
case
	when avg(patient_satisfaction) >=80  then 'excellent'
	
	when avg(patient_satisfaction) >=70  then 'Good'
	
	when avg(patient_satisfaction)>=60  then 'Fair'

	else 'Needs Improvement'
	end as satisfaction_level
	from services_weekly	
	group by service	
order by avg(patient_satisfaction )desc ;