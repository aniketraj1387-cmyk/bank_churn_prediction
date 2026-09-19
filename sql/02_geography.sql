-- churn rate by country
select geography,
       count(*) as customers,
       sum(exited) as churned,
       round(avg(exited) * 100, 1) as churn_pct
from customers
group by geography
order by churn_pct desc;
