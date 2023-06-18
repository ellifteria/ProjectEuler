def sum_by_to(int start, int by, int to):
  if start > to:
    return 0

  return start + sum_by_to(start + by, by, to)

cdef int mult_a = 3
cdef int mult_b = 5
cdef int max_to = 999

print(sum_by_to(0, mult_a, max_to) +
  sum_by_to(0, mult_b, max_to) -
  sum_by_to(0, mult_a * mult_b, max_to))
