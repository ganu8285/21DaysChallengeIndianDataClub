select * from patients;

-- first practice question

select patient_id,
	upper(name ) as uppercase_name
from patients;


-- second practice question

select * from staff;

select staff_name,
length(staff_name) as staff_member_length
from staff;

-- third practice question

SELECT
    staff_id,
    staff_name,
    CONCAT(staff_id, '-', staff_name) AS staff_info
FROM
    staff;

--Daily Challenge


SELECT 
 patient_id,
 UPPER(name) AS upper_case_name,
 LOWER(service) AS service_in_lower_case,
 LENGTH(name) AS name_length,
 age,
CASE
 WHEN age >= 65 THEN 'Senior'
 WHEN age >= 18 THEN 'Adult'
 ELSE 'Minor'
END AS age_category,
FROM patients
WHERE LENGTH(name) > 10
ORDER BY upper_case_name, service_in_lower_case;