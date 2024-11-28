select 
    quarter1_job_postings.job_title_short,
    quarter1_job_postings.job_location,
    quarter1_job_postings.job_via,
    quarter1_job_postings.job_posted_date::Date,
    quarter1_job_postings.salary_year_avg
from(
    select *
    from january_jobs
    union ALL
    select *
    from february_jobs
    union ALL
    select *
    from march_jobs
) as quarter1_job_postings
Where
    quarter1_job_postings.salary_year_avg >70000 AND
    quarter1_job_postings.job_title_short = 'Data Analyst'
Order BY
    quarter1_job_postings.salary_year_avg desc