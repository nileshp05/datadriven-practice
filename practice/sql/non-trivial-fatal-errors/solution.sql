select err_id, message, svc_name,
case when len(message) < 30 then 'short'
when len(message) >= 30 and len(message) <= 31 then 'mid'
when len(message) >= 32 then 'long' end as length_category
from err_tracks
where severity in ('Fatal', 'fatal')
and len(message) >=30
