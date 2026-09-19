-- churn by balance band, split by country - are we losing the money?
with banded as (
    select case
               when balance = 0 then '0 zero'
               when balance < 50000 then '1 under 50k'
               when balance < 100000 then '2 50-100k'
               when balance < 150000 then '3 100-150k'
               else '4 150k+'
           end as balance_band,
           geography,
           exited
    from customers
)
select balance_band,
       geography,
       count(*) as customers,
       round(avg(exited) * 100, 1) as churn_pct
from banded
group by balance_band, geography
order by balance_band, geography;
