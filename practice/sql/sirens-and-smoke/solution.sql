select alert_id, svc_name, severity, status, fired_at, ack_by, resolved
from alert_events
where year(fired_at) = 2026
and lower(severity) in ('high', 'critical')
