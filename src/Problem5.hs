module Problem5
    ( solution
    ) where

-- Smallest Multiple
-- see https://projecteuler.net/problem=5

isEvenlyDivisible :: Integer -> Integer -> Integer -> Bool
isEvenlyDivisible rangeMin rangeMax dividend = go rangeMin where
  go divisor
    | (>) divisor rangeMax = True
    | not ((==) (mod dividend divisor) 0) = False
    | otherwise = go ((+) divisor 1)

-- optimizations
-- A number must be even if it is divisible by all numbers
-- so assuming rangeMax is even, increment by 2 instead of 1

smallestMultiple :: Integer -> Integer -> Integer
smallestMultiple rangeMin rangeMax = go ((+) rangeMax 2) where
  go x = if isEvenlyDivisible rangeMin rangeMax x
         then x
         else go ((+) x 2)

-- optimizations
-- Start rangeMin from the last 9 numbers of RangeMax otherwise
-- your solving the problem more than once

solution :: Integer -> Integer
solution rangeMax =
  if rangeMax > 10
  then smallestMultiple (rangeMax - 9) rangeMax
  else smallestMultiple 2 rangeMax
