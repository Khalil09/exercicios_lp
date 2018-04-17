same_elements :: [Int] -> [Int] -> Bool

same_elements [] (y:ys) = True
same_elements (x:xs) (y:ys) | n_in_list x (y:ys) = same_elements xs (y:ys)
                            | otherwise = False

n_in_list n [] = False
n_in_list n (x:xs) | (n == x) = True
                   | otherwise = n_in_list n xs