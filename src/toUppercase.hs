{-|
  Naive re-implementation of a 'toUpper' function.
-}

import Data.List (find)
import Data.Maybe (fromMaybe)

toUppercase :: String -> String
toUppercase = map toUpper'
  where letters = zip ['a'..'z'] ['A'..'Z']
        matchFirst x (y, _) = y == x
        toUpper' x = snd $ fromMaybe (x, x) $ find (matchFirst x) letters