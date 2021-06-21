bubble' [] = []
bubble' [x] = [x]
bubble' (x:y:xs)
 | x > y = y: bubble'(x:xs)
 | otherwise = x: bubble' (y:xs) 

bubblecount [] = 0
bubblecount [x] = 0
bubblecount (x:y:xs)
 | x > y = 1 
 | otherwise = 0 + bubblecount (y:xs)

bubble xs 
  | bubblecount xs > 0 =  bubble (bubble' xs)
  | otherwise =  xs 

main = do
    a <- readLn :: IO [Int]
    print $ bubble a
