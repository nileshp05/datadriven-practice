SELECT 
    a.svc_name,
    SUM((a.amount * b.amount) / 8760.0) AS total_prorated_cost
FROM cost_allocs a
INNER JOIN cloud_costs b
    ON a.svc_name = b.svc_name
   AND a.period = SUBSTR(b.bill_date, 1, 7)
GROUP BY 
    a.svc_name
HAVING 
    SUM((a.amount * b.amount) / 8760.0) > 10000;
