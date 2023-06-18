efibsum :: Int -> Int -> Int -> Int
efibsum n nprev max
    | n > max       = 0
    | mod n 2 /= 0  = efibsum (n + nprev) n max
    | otherwise     = n + efibsum (n + nprev) n max

main = do
    print(efibsum 1 1 4000000)

