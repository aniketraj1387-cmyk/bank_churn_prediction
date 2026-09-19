-- churn by number of products held
select num_products,
       count(*) as customers,
       round(avg(exited) * 100, 1) as churn_pct
from customers
group by num_products
order by num_products;
