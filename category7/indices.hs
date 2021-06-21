indices v xs = [position | (value, position) <- zip xs [0..], value == v]

main = do  
   a <- readLn :: IO Int
   b <- readLn :: IO [Int]
   print $ indices a b