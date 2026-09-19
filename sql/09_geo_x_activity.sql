-- is germany's churn just an inactivity problem, or elevated across the board?
select geography,
       is_active,
       count(*) as customers,
       round(avg(exited) * 100, 1) as churn_pct
from customers
group by geography, is_active
order by geography, is_active;
