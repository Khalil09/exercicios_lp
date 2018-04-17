compara_lista :: Int -> [Int] -> Bool

compara_lista n [] = False
compara_lista n (w:ws) = (n == w) || compara_lista n ws

[] /\ []     = []
(x:xs) /\ [] = []
[] /\ (y:ys) = []
(x:xs) /\ (y:ys) | compara_lista x (y:ys) = x:(xs /\ (y:ys))
                 | otherwise              = xs /\ (y:ys)