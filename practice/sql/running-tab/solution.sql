select user_id, cast(transaction_date as date) as transaction_date,
total_amount,
sum(total_amount) over(partition by user_id order by cast(transaction_date as date))
as cumulative_spend
from transactions
order by user_id
