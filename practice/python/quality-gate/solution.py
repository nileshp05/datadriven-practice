def first_failing_reading(readings):
  for index, num in enumerate(readings):
    if num <= 0:
      return index
  return -1
