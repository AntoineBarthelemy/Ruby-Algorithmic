def sum_with_for(min, max)
  return -1 if min > max

  sum = 0
  for i in (min..max).to_a
    sum += i
  end
  return sum
end

def sum_with_while(min, max)
  # CONSTRAINT: you should use a while..end structure
  return -1 if min > max

  count = 0
  i = min
  while i <= max
    count += i
    i = i + 1
  end
  return count
end
