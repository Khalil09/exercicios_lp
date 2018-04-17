is_upper c | c >= 'A' && c <= 'Z' = True
           | otherwise = False

word [] = []
word (x:xs) | (x /= ' ') = x:(word (xs))
            | otherwise = word []

search [] = []
search (x:xs) | is_upper x = word (x:xs) : search xs
              | otherwise = search xs