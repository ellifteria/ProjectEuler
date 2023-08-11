proc sumbyto(start: int, by: int, to: int): int =
    if start > to:
        result = 0
    else:
        result = start + sumbyto(start + by, by, to)

var val = sumbyto(0, 5, 999) + sumbyto(0, 3, 999) - sumbyto(0, 15, 999)
echo(val)