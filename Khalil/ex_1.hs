is_equalfour :: [Int] -> Bool

is_equalfour [] = True
is_equalfour [_] = True
is_equalfour (x:xs) | (x == head xs) = is_equalfour(xs)
		    | otherwise = False
