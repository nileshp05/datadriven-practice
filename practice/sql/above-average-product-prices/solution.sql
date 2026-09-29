with cte as (select product_id,
min(total_amount) as base_price
from
transactions
group by product_id)
select product_id, base_price from cte
where base_price > (select avg(base_price) from cte)
