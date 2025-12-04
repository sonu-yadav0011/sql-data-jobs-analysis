SELECT 
    s.skills,
    COUNT(sj.job_id) AS demand_count
FROM job_postings_fact AS j
INNER JOIN skills_job_dim AS sj
    ON j.job_id = sj.job_id
INNER JOIN skills_dim AS s
    ON sj.skill_id = s.skill_id
WHERE 
    j.job_title_short = 'Data Scientist'
GROUP BY 
    s.skills
ORDER BY 
    demand_count DESC
LIMIT 5;
