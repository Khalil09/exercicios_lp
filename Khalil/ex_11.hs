media_lista :: [Float] -> Float
acima_media :: [Float] -> Float -> Int

media_lista [] = 0
media_lista (x:xs) = soma_lista (x:xs) / tamanho_lista (x:xs)

soma_lista [] = 0
soma_lista (x:xs) = x + soma_lista xs

tamanho_lista [] = 0
tamanho_lista (x:xs) = 1 + tamanho_lista xs


acima_media [] _ = 0
acima_media (x:xs) 0 = acima_media lista media
                       where
                        lista = (x:xs)
                        media = media_lista (x:xs)

acima_media (x:xs) y | (x > y) = 1 + acima_media xs y
                     | otherwise = acima_media xs y