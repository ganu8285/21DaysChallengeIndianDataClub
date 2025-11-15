SELECT
    CASE 
        WHEN event IS NOT NULL THEN 'With Event'
        ELSE 'No Event'
    END AS event_status,
    COUNT(*) AS week_count,
    AVG(patient_satisfaction) AS avg_satisfaction,
    AVG(staff_morale) AS avg_morale
FROM services_weekly
GROUP BY event_status
ORDER BY avg_satisfaction DESC;
