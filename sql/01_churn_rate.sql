-- overall churn rate
select count(*) as customers,
       sum(exited) as churned,
       round(avg(exited) * 100, 1) as churn_pct
from customers;
