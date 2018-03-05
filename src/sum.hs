{-|
  Re-implementation of a 'sum' function.
-}

sum' :: (Num a) => [a] -> a

sum' [] = 0
sum' (head:tail) = head + sum' tail