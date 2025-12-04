WITH skill_demand AS (
    SELECT skills_dim.skill_id,
        skills_dim.skills,
        COUNT(skills_job_dim.job_id) AS demand_count
    FROM job_postings_fact
    INNER JOIN skills_job_dim
        ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim
        ON skills_job_dim.skill_id = skills_dim.skill_id
    WHERE job_title_short = 'Data Analyst'
    GROUP BY skills_dim.skill_id
), avg_salary AS (
    SELECT skills_dim.skill_id,
        ROUND(AVG(salary_year_avg), 2) AS avg_salary
    FROM job_postings_fact
    INNER JOIN skills_job_dim
        ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim
        ON skills_job_dim.skill_id = skills_dim.skill_id
    WHERE job_title_short = 'Data Analyst' AND
        salary_year_avg IS NOT NULL
    GROUP BY skills_dim.skill_id
)


SELECT 
    skill_demand.skill_id,
    skill_demand.skills,
    skill_demand.demand_count,
    avg_salary.avg_salary
FROM skill_demand
INNER JOIN avg_salary
    ON skill_demand.skill_id = avg_salary.skill_id
ORDER BY
    avg_salary.avg_salary DESC,
    skill_demand.demand_count DESC;
