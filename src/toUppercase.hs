{-|
  Naive re-implementation of a 'toUpper' function.
  Please don't trust this one and use 'Data.Char.toUpper' :)
-}

import Data.List (find)
import Data.Maybe (fromMaybe)

matchFirst :: (Eq a) => a -> (a, b) -> Bool
matchFirst x (y, _) = x == y

upperLetter :: Char -> Char
upperLetter x = snd $ fromMaybe (x, x) (find (matchFirst x) (zip ['a'..'z'] ['A'..'Z']))

toUppercase :: String -> String
toUppercase = map upperLetter