-- do churners hold more money than stayers?
select exited,
       count(*) as customers,
       round(avg(balance), 0) as avg_balance,
       round(avg(case when balance = 0 then 1.0 else 0 end) * 100, 1) as zero_balance_pct
from customers
group by exited;
