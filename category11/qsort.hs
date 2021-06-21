qsort [] = []
qsort (x:xs) = 
 let left = qsort (filter (<= x) xs)
     right = qsort (filter (> x) xs) 
 in left ++ [x] ++ right

main = do
    a <- readLn :: IO [Int]
    print $ qsort a
