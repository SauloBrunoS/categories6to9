upper :: [Char] -> [Char]
upper [] = []
upper (x:xs)
 | x `elem` ['a'..'z'] || x `elem` ['A' .. 'Z'] =  [n | (m, n) <- zip ['a'..'z'] ['A'..'Z'], m == x || n == x] ++ upper xs
 | otherwise = x : upper xs

main = do
     a <- getLine
     print $ upper a