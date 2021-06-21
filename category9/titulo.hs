import Data.Char
titulo' [x] = [toLower x]
titulo' (x:y:rest)
  | isSpace x = x: toUpper y: titulo' rest
  | otherwise = toLower x: titulo' (y:rest)

titulo [] = []
titulo [x] = [toUpper x]
titulo (x:xs) = toUpper x : titulo' xs

main = do
    a <- getLine
    print $ titulo a
