def running_total(deposits):
  total_deposits = 0
  running_new = []
  for deposite in deposits:
    total_deposits += deposite
    running_new.append(total_deposits)
  return running_new
