select b.product_name, sum(a.total_amount) as revenue
from transactions a
inner join products b on a.product_id = b.product_id
group by b.product_name
order by revenue desc
limit 5;
