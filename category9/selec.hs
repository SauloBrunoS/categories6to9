selec xs [] = []
selec xs (p:ps) = [value | (value, position) <- zip xs [0..], position == p] ++ selec xs ps

main = do
    a <- getLine
    b <- readLn :: IO [Int]
    print $ selec a b
