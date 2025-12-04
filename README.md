# SQL Data Science Job Market Analysis

Using SQL to Analyze Data Scientist Job Salaries, Skills & Market Demand

This project explores real job-market data for Data Scientists, analyzing top-paying roles, in-demand skills, highest-paying skills, and the optimal skillset that combines high salary and high demand.
All analysis is performed using SQL on a relational dataset containing job postings, companies, and skills.

## 🗂️ Repository Structure
sql-data-science-analysis/
│
├── README.md
│
├── data/
│   └── raw/ (dataset provided by the instructor/video)
│
├── sql/
│   ├── 01_top_paying_jobs.sql
│   ├── 02_skills_of_top_paying_jobs.sql
│   ├── 03_top_demanded_skills.sql
│   ├── 04_top_paying_skills.sql
│   └── 05_optimal_skills.sql
│
├── analysis/
│   ├── findings.md
│   └── charts/ (optional)
│
└── assets/ (images for README)

## 📚 Dataset Description

This dataset includes:

- Job postings: job titles, locations, salaries, posting dates
- Company information
- Skills: technical skills tied to each job posting

The data was sourced from a SQL teaching project (video linked in the project description).

## 🧠 Goal of the Project

To answer 5 practical questions:

1. What are the highest-paying Data Scientist jobs?
2. What skills do these top-paying roles require?
3. What are the most in-demand skills for Data Scientists?
4. What skills pay the highest salaries?
5. What are the optimal skills to learn (high demand + high pay)?

## Analysis & Findings

### 1. Top-Paying Data Scientist Jobs

**Query:** `sql/01_top_paying_jobs.sql`

This query ranks Data Scientist roles by salary and extracts the top 10 highest-paying jobs.

#### Top 10 Highest-Paying Roles

| Rank | Job Title | Company | Location | Schedule | Avg Salary | Posted |
|------|-----------|---------|----------|----------|-----------|--------|
| 1 | Data Scientist | East River Electric Power Cooperative, Inc. | Madison, SD | Full-time | $960,000 | 2023-05-04 |
| 2 | GIS Analyst | ReServe | New York, NY | Full-time | $585,000 | 2023-12-27 |
| 3 | Staff Data Scientist / Quant Researcher | Selby Jennings | Anywhere | Full-time | $550,000 | 2023-08-16 |
| 4 | Staff Data Scientist – Business Analytics | Selby Jennings | Anywhere | Full-time | $525,000 | 2023-09-01 |
| 5 | Data Scientist (L5) – Messaging | Netflix | Los Gatos, CA | Full-time | $450,000 | 2023-08-17 |
| 6 | Data Scientist (L5) – Member Product | Netflix | California City, CA | Full-time | $450,000 | 2023-12-19 |
| 7 | Applied Data Science / ML Leader | Glocomms | San Francisco, CA | Full-time | $425,000 | 2023-10-06 |
| 8 | Data Science Director | Asana | San Francisco, CA | Full-time | $375,000 | 2023-06-12 |
| 9 | Director, Data Science & Analytics | Big Lots | Columbus, OH | Full-time | $375,000 | 2023-08-17 |
| 10 | Data Scientist SME | CACI International | Liberty, NC | Full-time | $375,000 | 2023-06-05 |

#### Insights

- Salaries range from $375K to nearly $1M, showing massive variance.
- Senior and specialized roles dominate the list (Directors, Staff Scientists, Quant Researchers).
- Netflix, Selby Jennings, and Asana appear as repeated high-paying employers.
- Many top roles allow "Anywhere" (remote), especially consultancy or finance-oriented positions.

### 2. Skills Required for Top-Paying Data Scientist Jobs

**Query:** `sql/02_skills_of_top_paying_jobs.sql`

This identifies skills needed for the exact jobs in the top-10 salary list.

#### Most Common Skills Among the Top-Paying Roles

Based on repeated appearance:

- Python
- SQL
- R
- C++
- Excel
- Spark
- Machine Learning libraries (TensorFlow, PyTorch, scikit-learn)
- Data platforms (Databricks, Hadoop, Cassandra, Neo4j)

#### Insights

- High-paying jobs require strong programming (Python, C++, Java) instead of only analytics tools.
- ML engineering skills (TensorFlow, PyTorch, Spark) appear in the highest-paying Netflix and Algo Capital roles.
- Managers/directors require broader stacks (Linux, data frameworks, BI tools).

### 3. Top-Demanded Skills for Data Scientists

**Query:** `sql/03_top_demanded_skills.sql`

This counts how many job postings request each skill.

#### Top 5 Most Demanded Skills

| Skill | Demand Count |
|-------|--------------|
| Python | 114,016 |
| SQL | 79,174 |
| R | 59,754 |
| SAS | 29,642 |
| Tableau | 29,513 |

#### Insights

- Python dominates the DS job market — over 114K postings require it.
- SQL remains essential for almost 80K jobs, confirming DS roles are still data-heavy.
- Traditional statistical languages like R and SAS are still widely used.
- Tableau stays significant, showing DS roles still need communication & visualization skills.

### 4. Highest-Paying Skills for Data Scientists

**Query:** `sql/04_top_paying_skills.sql`

Sorted by average salary (top 10).

| Skill | Avg Salary |
|-------|-----------|
| Asana | $215,477 |
| Airtable | $201,142 |
| RedHat | $189,500 |
| Watson | $187,417 |
| Elixir | $170,823 |
| Lua | $170,500 |
| Slack | $168,218 |
| Solidity | $166,979 |
| Ruby on Rails | $166,500 |
| RShiny | $166,436 |

#### Insights

- Some of the highest-paying skills are specialized or niche, not core DS tools.
- Enterprise tools like Asana, Airtable, Slack often appear in high-seniority roles.
- Solidity shows high pay due to blockchain-related positions.
- Elixir and Lua indicate that backend + DS hybrid roles can be extremely lucrative.

### 5. Optimal Skills (High Demand + High Pay)

**Query:** `sql/05_optimal_skills.sql`

These skills balance market demand and salary level — the best ROI.

| Skill | Demand Count | Avg Salary |
|-------|--------------|-----------|
| Asana | 98 | $215,477 |
| Airtable | 65 | $201,142 |
| RedHat | 84 | $189,500 |
| Watson | 360 | $187,417 |
| Elixir | 49 | $170,823 |
| Lua | 36 | $170,500 |
| Slack | 405 | $168,218 |
| Solidity | 125 | $166,979 |
| Ruby on Rails | 47 | $166,500 |
| RShiny | 454 | $166,436 |

#### Insights

- The most optimal skills (high-salary + high-demand) are: **Watson, Slack, RShiny** — these combine strong demand (360–454 postings) with $165K+ salaries.
- Solidity stands out due to blockchain & DeFi hiring.
- Enterprise productivity + workflow tools (Asana, Airtable) appear frequently in executive DS roles.

## Conclusions: What Should a Data Scientist Learn?

Based on all 5 analyses:

### Must-Have Core Skills (High Demand)

- Python
- SQL
- R
- Tableau

### High-Value Skills (Raise Salary)

- Spark
- TensorFlow, PyTorch
- C++
- Linux
- Big-data tools (Databricks, Hadoop)

### Highest-Paying Niche Skills

- Asana
- Airtable
- RedHat
- Solidity
- Elixir
- RShiny

### Best Overall ROI

Skills balancing both demand + salary:

- Watson
- RShiny
- Slack
- Solidity

## 🛠️ How to Reproduce the Analysis

1. Import the dataset into a SQL database (PostgreSQL recommended).
2. Run each SQL file from the `/sql` directory in order.
3. Review results in `/analysis/findings.md`.
4. Visualize any insights using charts (optional).

## 🙌 Acknowledgements

- Dataset & project idea from the YouTube SQL course.
- Analysis, formatting, and SQL optimization done independently for this project.