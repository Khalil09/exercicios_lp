par_impar [] = ([],[])
par_impar (x:xs) = (pares(x:xs), impares(x:xs))

pares [] = []
pares (x:xs) | (x `mod` 2 == 0) = x:(pares xs)
             | otherwise = pares xs

impares [] = []
impares (x:xs) | (x `mod` 2 /= 0) = x:(impares xs)
               | otherwise = impares xs