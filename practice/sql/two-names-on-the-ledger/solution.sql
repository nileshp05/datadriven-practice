SELECT
  a.transaction_id,
  b.username,
  a.total_amount,
  SUM(a.total_amount) OVER (
    ORDER BY a.transaction_id
  ) AS running_total
FROM transactions AS a
LEFT JOIN users AS b
  ON a.user_id = b.user_id
WHERE b.username IN (
  'alice',
  'aaron42'
  )
ORDER BY a.transaction_id asc
