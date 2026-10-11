select a.*, 
u.*,
-u.user_id
from
ad_impressions a
full outer join users u
on a.user_id = u.user_id
where a.ad_campaign = 'HOLIDAY_PROMO'
order by a.impression_time asc
