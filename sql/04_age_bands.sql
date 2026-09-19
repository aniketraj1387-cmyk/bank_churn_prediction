-- churn by age band (these cuts get reused in the notebooks)
with banded as (
    select case
               when age < 30 then '18-29'
               when age < 40 then '30-39'
               when age < 50 then '40-49'
               when age < 60 then '50-59'
               else '60+'
           end as age_band,
           exited
    from customers
)
select age_band,
       count(*) as customers,
       round(avg(exited) * 100, 1) as churn_pct
from banded
group by age_band
order by age_band;
