merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
 | x <= y = x : merge xs (y:ys)
 | otherwise = y: merge (x:xs) ys

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ merge a b
