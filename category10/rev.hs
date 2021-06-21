rev' x
  | x < 10 = [x]
  | otherwise = x `mod` 10 : rev' (x `div` 10)

calc [] = 0
calc (x:xs) = (x * 10 ^ (length xs)) + calc xs

rev x = calc(rev' x)

main = do
    a <- readLn :: IO Int
    print $ rev a
