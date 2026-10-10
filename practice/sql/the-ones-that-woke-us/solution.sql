select * 
from alert_events
where year(fired_at) = 2026
and lower(severity) in ('critical', 'high')
