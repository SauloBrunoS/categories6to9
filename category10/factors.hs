ehPrimo n = null [z | z <- [2..n-1], n `mod` z == 0]

factors n
 | ehPrimo n = [(n,1)]
 | otherwise = [(p, maxPot n p) | p <- [2..n], ehPrimo p, maxPot n p > 0]

maxPot n x
  | n `mod` x == 0 = 1 + maxPot (n `div` x) x
  | otherwise = 0

main = do
    a <- readLn :: IO Int
    print $ factors a
