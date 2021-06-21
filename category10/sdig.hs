sdig n
 | n < 10 = n
 | otherwise = n `mod` 10 + sdig (n `div` 10)

main = do
    a <- readLn :: IO Int
    print $ sdig a
