select year(bill_date) as fiscal_year, sum(amount) as total_spend, count(distinct svc_name)
as service_count
from cloud_costs
group by year(bill_date) 
order by fiscal_year asc
