sumbyto :: Int -> Int -> Int -> Int
sumbyto start by to
    | start > to    = 0
    | otherwise = start + sumbyto (start + by) by to

main = do
    print (sumbyto 0 3 999 + sumbyto 0 5 999 - sumbyto 0 15 999)
