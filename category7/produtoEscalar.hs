
produtoEscalar xs ys = sum [valor * valor' | (valor, valor') <- zip xs ys] 

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ produtoEscalar a b
