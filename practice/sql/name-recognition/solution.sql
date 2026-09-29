select distinct svc_name,
case when svc_name like '%api%' then 'api_service'
     when svc_name like '%cache%' or svc_name like '%redis%' then 'cache_service'
     when svc_name like '%db%' or svc_name like '%postgres%' then 'database'
     else 'other' end as category
from svc_health
