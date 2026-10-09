select p.category, sum(total_amount) as total_revenue
, sum(quantity) as total_units,
dense_rank() over(order by sum(total_amount) desc) as position
from products p
left join transactions t
on p.product_id = t.product_id
group by p.category
order by total_revenue desc
