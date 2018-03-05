{-|
  Re-implementation of a 'tail' function.
-}

tail' :: [a] -> [a]

tail' [] = error "tail of empty list cannot be achieved"
tail' [x] = [x]
tail' (_:x) = x