select * from patients;

SELECT 
    patient_id,
    name,
    arrival_date,
    EXTRACT(YEAR FROM arrival_date) AS arrival_year
FROM patients;

-- Daily Challenge

SELECT service,
       count(patient_id) AS patient_count,
       ROUND(AVG(departure_date - arrival_date), 2) AS avg_stay_length
FROM patients
GROUP BY service
HAVING AVG(departure_date - arrival_date) > 7
ORDER BY avg_stay_length DESC;