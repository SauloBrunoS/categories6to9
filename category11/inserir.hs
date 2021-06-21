inserir y [] = [y]
inserir y (x:xs)
 | y < x = y : (x:xs)
 | otherwise = x: inserir y xs 

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ inserir a b
