ordenada [] = True
ordenada [x] = True 
ordenada (x:y:xs)
 | x <= y = ordenada (y:xs)
 | otherwise = False

main = do
    a <- readLn :: IO [Int]
    print $ ordenada a
