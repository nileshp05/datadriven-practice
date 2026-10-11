select lower(team_name) as team_name,
lower(region) as region,
sum(amount) as total_amount,
cast(avg(amount) as int) as avg_alloc_dollars,
dense_rank() over(partition by lower(region) order by sum(amount) desc)
as rnk
from 
cost_allocs
group by lower(team_name), lower(region)
having sum(amount) > 0
