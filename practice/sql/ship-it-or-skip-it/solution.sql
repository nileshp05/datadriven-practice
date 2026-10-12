select cast(deploy_at as date) as deploy_date,
count(log_id) as deploy_count
from
deploy_logs
--where lower(status) = 'success'
group by cast(deploy_at as date)
order by deploy_date asc
