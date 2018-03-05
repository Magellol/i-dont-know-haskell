{-|
  Re-implementation of a 'head' function.
-}

head' :: [a] -> a

head' [] = error "head of empty list cannot be achieved"
head' [x] = x
head' (x:_) = x