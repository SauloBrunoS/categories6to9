count y [] = 0
count y (x:xs)
  | y == x = 1 + count y xs
  | otherwise = 0

remov y [] = []
remov y (x:xs) 
  | y > 0 = remov (y-1) xs
  | otherwise = x:xs 

compac [] = []
compac (x:xs) 
   | count x (x:xs) > 1 = [x, count x (x:xs)] : compac (remov (count x (x:xs)) (x:xs))
   | otherwise = [x] : compac xs 

main = do
    a <- readLn :: IO [Int]
    print $ compac a
