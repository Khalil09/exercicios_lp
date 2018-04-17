time_in_list :: Int -> [Int] -> Int

time_in_list n [] = 0
time_in_list n (x:xs) | (n == x) = 1 + time_in_list n xs
                      | otherwise = time_in_list n xs