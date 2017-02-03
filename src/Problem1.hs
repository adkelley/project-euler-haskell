module Problem1
    ( solution
    ) where

multiples :: Integer -> Integer -> Integer -> Bool
multiples m1 m2 x = rem x m1 == 0 || rem x m2 == 0

solution :: Integer
solution =
  sum $ filter (multiples 3 5) [1..999]
