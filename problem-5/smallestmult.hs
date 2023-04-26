reduceby :: Int -> Int -> Int
reduceby n by
    | by == 1           = n
    | by == 0           = 1
    | (mod n by) == 0   = reduceby (div n by) ((reduceby by (by - 1)) - 1)
    | otherwise         = reduceby n (by - 1)

needed :: Int -> [Int]
needed n
    | n == 1    = [1]
    | otherwise = (reduceby n (n - 1)):(needed (n - 1))

listprod :: [Int] -> Int
listprod list
    | (tail list) == [] = head list
    | otherwise         = (head list) * (listprod (tail list))

main = do
    print(listprod (needed 20))
