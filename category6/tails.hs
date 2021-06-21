
tails :: [a] -> [[a]]
tails xs 
 | null xs = [xs]
 | otherwise = xs : tails (tail xs)

main = do
     a <- readLn :: IO [Int]
     print $ tails a
