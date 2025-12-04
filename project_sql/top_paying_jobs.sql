SELECT 
    job.job_id,
    job.job_title,
    job.job_location,
    company_dim.name AS company_name,
    job.job_schedule_type,
    job.salary_year_avg,
    job.job_posted_date
FROM job_postings_fact AS job
LEFT JOIN company_dim ON job.company_id = company_dim.company_id 
WHERE 
    job_title_short = 'Data Analyst' AND
    job_location ='Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10;
