vetFib 1 = [0]
vetFib 2 = [0,1]
vetFib n = previousarray ++ [sum $ drop (length previousarray - 2) previousarray]
  where previousarray = vetFib (n-1)

main = do
    a <- readLn :: IO Int
    print $ vetFib a
