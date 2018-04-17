get_element _ [] = []
get_element n (x:xs) | (n == 0) = [x]
                     | otherwise = get_element (n-1) xs