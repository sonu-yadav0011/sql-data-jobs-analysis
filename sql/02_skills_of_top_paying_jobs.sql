WITH top_jobs AS (
    SELECT 
        j.job_id,
        j.job_title,
        c.name AS company_name,
        j.salary_year_avg
    FROM job_postings_fact AS j
    LEFT JOIN company_dim AS c
        ON j.company_id = c.company_id
    WHERE 
        j.job_title_short = 'Data Scientist'
        AND j.salary_year_avg IS NOT NULL
    ORDER BY 
        j.salary_year_avg DESC
    LIMIT 10
)

SELECT 
    tj.job_id,
    tj.job_title,
    tj.company_name,
    tj.salary_year_avg,
    s.skills
FROM top_jobs AS tj
INNER JOIN skills_job_dim AS sj
    ON tj.job_id = sj.job_id
INNER JOIN skills_dim AS s
    ON sj.skill_id = s.skill_id
ORDER BY 
    tj.salary_year_avg DESC;
