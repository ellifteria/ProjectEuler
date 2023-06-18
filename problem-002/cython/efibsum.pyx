def efibsum(int n, int nprev, int max):
    if n > max:
        return 0

    if n % 2 != 0:
        return efibsum(n + nprev, n, max)

    return n + efibsum(n + nprev, n, max)

print(efibsum(1, 1, 4000000))

