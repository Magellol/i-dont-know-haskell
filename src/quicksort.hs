{-|
  Naive implementation of a 'quicksort' function.
-}

quicksort :: (Ord a) => [a] -> [a]

lte (head:tail) = [t | t <- tail, t <= head]
gt (head:tail) = [t | t <- tail, t > head]

quicksort [] = []
quicksort list = quicksort (lte list) ++ [head list] ++ quicksort (gt list)