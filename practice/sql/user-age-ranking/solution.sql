-- select user_id, 
-- dense_rank() over(order by cast(substring(age_bucket, 1, 2) as int) desc) as rank
-- from users

SELECT 
  user_id,
  DENSE_RANK() OVER (ORDER BY CAST(SUBSTRING(age_bucket, 1, 2) AS INTEGER) DESC) AS rank
FROM users;
