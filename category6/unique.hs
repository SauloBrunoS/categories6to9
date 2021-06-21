unique [] = []
unique (x:xs) = x : unique ([z | z <- xs, z /= x])

main = do
    a <- readLn :: IO [Int]
    print $ unique a