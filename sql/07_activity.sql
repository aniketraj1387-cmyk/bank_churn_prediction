-- active vs inactive members
select is_active,
       count(*) as customers,
       round(avg(exited) * 100, 1) as churn_pct
from customers
group by is_active;
