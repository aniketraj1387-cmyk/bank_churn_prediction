-- does time with the bank matter?
with banded as (
    select case
               when tenure <= 2 then '0-2'
               when tenure <= 5 then '3-5'
               when tenure <= 8 then '6-8'
               else '9-10'
           end as tenure_band,
           exited
    from customers
)
select tenure_band,
       count(*) as customers,
       round(avg(exited) * 100, 1) as churn_pct
from banded
group by tenure_band
order by tenure_band;
