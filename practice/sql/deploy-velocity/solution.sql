with cte as (select svc_name, cast(deploy_at as datetime2) as deploy_at,
LAG(cast(deploy_at as datetime2)) over(partition by svc_name order by deploy_at)
as pre_deploy_at
from deploy_logs
where dur_secs is not null
)
select svc_name, avg(datediff(second, pre_deploy_at, deploy_at)/86400.0)
as avg_gap_days
from cte
group by svc_name
order by svc_name
