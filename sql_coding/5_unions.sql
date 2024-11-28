SELECT
    job_title_short,
    company_id,
    job_location
FROM
    january_jobs

Union all --combines the tables

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    february_jobs

Union all --combines the tables

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    march_jobs