countopts :: Int -> Int -> Int -> [Int] -> Int
countopts curr mult goal next
    | next == []    =
                        if goal == (curr * mult) then 1
                        else 0
    | mult == 1    =
                        if goal == (curr * mult) then (1 + (countopts
                                (head next) (div goal (head next)) goal (tail next)))
                        else ((countopts (head next) (div (goal - (curr *mult)) (head next))
                                (goal - (curr *mult)) (tail next)) + (countopts
                                (head next) (div goal (head next)) goal (tail next)))
    | otherwise     =
                        if goal == (curr * mult) then (1 + (countopts
                                curr (mult - 1) goal next))
                        else ((countopts (head next) (div (goal - (curr *mult)) (head next))
                                (goal - (curr *mult)) (tail next)) + (countopts curr (mult - 1)
                                goal next))

main = do
    print((countopts 200 1 200 [100, 50, 20, 10, 5, 2, 1]))
