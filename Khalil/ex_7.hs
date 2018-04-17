divide :: Int -> [Int] -> [Int]

divide n [] = []
divide n (x:xs) | (n `mod` x == 0) = x:divide n xs
                | (n `mod` x /= 0) = divide n xs

divisores n = divide n [1..n`div`2]