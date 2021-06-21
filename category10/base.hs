base number b
 | number /= 0 = base (number `div` b) b ++ [list !! resto] 
 | otherwise = ""
 where
   resto = number `mod` b
   list = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ" 

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ base a b
