ehPrimo n = null [z | z <- [2..n-1], n `mod` z == 0]

main = do
    a <- readLn :: IO Int
    print $ ehPrimo a
