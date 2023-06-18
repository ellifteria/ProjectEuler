sumsqrto :: Int -> Int -> Int
sumsqrto n max
    | n >  max  = 0
    | otherwise = (n * n) + sumsqrto (n + 1) max

sumto :: Int -> Int -> Int
sumto n  max
    | n > max   = 0
    | otherwise = n + sumto (n + 1) max

main = do
    print( (sumto 0 100) ^ 2 - sumsqrto 0 100)
