{-|
  Naive re-implementation of a 'toUpper' function.
-}

import Data.List (find)
import Data.Maybe (fromMaybe)

matchFirst :: (Eq a) => a -> (a, b) -> Bool
matchFirst x (y, _) = x == y

upperLetter :: Char -> Char
upperLetter x = snd $ fromMaybe (x, x) (find (matchFirst x) (zip ['a'..'z'] ['A'..'Z']))

toUppercase :: String -> String
toUppercase = map upperLetter