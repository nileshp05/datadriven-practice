select svc_name, lower(severity), count(alert_id) as alert_count
from alert_events
group by svc_name, lower(severity)
order by alert_count desc
