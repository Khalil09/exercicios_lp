pow2 :: Int -> Int

pow2 0 = 1
pow2 n = 2 * pow2(n-1)