proc efibsum(n: int, nprev: int, max: int): int = 
    if n > max:
        result = 0
    elif n.mod(2) != 0:
        result = efibsum(n + nprev, n, max)
    else:
        result = n + efibsum(n + nprev, n, max)

echo(efibsum(1, 1, 4000000))