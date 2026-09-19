-- churn rate by gender
select gender,
       count(*) as customers,
       round(avg(exited) * 100, 1) as churn_pct
from customers
group by gender;
