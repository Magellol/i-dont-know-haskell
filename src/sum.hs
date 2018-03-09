{-|
  Re-implementation of a 'sum' function.
-}

sum' :: (Num a) => [a] -> a

sum' = foldl1 (+)

-- Variation using recursion
-- sum' [] = 0
-- sum' (head:tail) = head + sum' tail