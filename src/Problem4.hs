module Problem4
    ( solution
    ) where

import Prelude hiding (product)

product :: Integer -> Integer -> [Integer]
product minNum maxNum =
  [x * y | x <- [minNum..maxNum], y <- [minNum..maxNum]]

isPalindrome :: Integer -> Bool
isPalindrome x =
  let s = show x
  in  s == reverse s

palindromes :: [Integer] -> [Integer]
palindromes = filter isPalindrome

solution :: Integer -> Integer
solution n = maximum $ palindromes $ product n (n * 10 - 1)
