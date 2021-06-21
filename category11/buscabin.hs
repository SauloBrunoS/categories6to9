buscaBin [] _ = -1
buscaBin xs i 
 | i == middlevalue = middle
 | i > middlevalue = if ((buscaBin (drop (middle+1) xs) i) >= 0) then middle + 1 + buscaBin (drop (middle+1) xs) i else -1
 | otherwise = buscaBin (take middle xs) i 
   where middle = (length xs) `div` 2
         middlevalue = xs !! middle 

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO Int
    print $ buscaBin a b
