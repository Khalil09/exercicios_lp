soma_dobro :: [Int] -> Int

soma_dobro [] = 0
soma_dobro (x:xs) = (2*x) + soma_dobro(xs)