isPalind xs
 | xs == reverse xs = True
 | otherwise = False

main = do
    a <- getLine
    print $ isPalind a
