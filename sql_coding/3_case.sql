select
    count(job_id) as number_of_jobs,
    CASE
        When job_location = 'Anywhere' Then 'Remote'
        When job_location = 'New York, NY' then 'Local'
        ELSE 'Onsite'
    End As location_desc

from 
    job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
GROUP BY
    location_desc
order by 
    number_of_jobs desc
limit 100