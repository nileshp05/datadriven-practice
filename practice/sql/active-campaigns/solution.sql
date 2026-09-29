SELECT
  ad_campaign,
  COUNT(impression_id) AS impressions,
  SUM(revenue) AS total_revenue,
  ROUND(SUM(clicked) * 100.0 / COUNT(impression_id), 1) AS ctr FROM ad_impressions GROUP BY ad_campaign HAVING COUNT(impression_id) > 15 ORDER BY ctr DESC,  ad_campaign ASC ;
