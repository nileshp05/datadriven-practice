select *, SUM(rows_in) over(partition by status) status_total_rows_in
from data_pipes
