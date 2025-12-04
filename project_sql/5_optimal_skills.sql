WITH skill_demand AS (
    SELECT 
        s.skill_id,
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
        s.skill_id, s.skills
), avg_salary AS (
    SELECT 
        s.skill_id,
        ROUND(AVG(j.salary_year_avg), 2) AS avg_salary
    FROM job_postings_fact AS j
    INNER JOIN skills_job_dim AS sj
        ON j.job_id = sj.job_id
    INNER JOIN skills_dim AS s
        ON sj.skill_id = s.skill_id
    WHERE 
        j.job_title_short = 'Data Scientist'
        AND j.salary_year_avg IS NOT NULL
    GROUP BY 
        s.skill_id
)

SELECT 
    d.skill_id,
    d.skills,
    d.demand_count,
    a.avg_salary
FROM skill_demand AS d
INNER JOIN avg_salary AS a
    ON d.skill_id = a.skill_id
ORDER BY 
    a.avg_salary DESC,
    d.demand_count DESC
LIMIT 10;
