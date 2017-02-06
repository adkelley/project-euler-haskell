module Problem3
    ( solution, primeFactors
    ) where

-- Largest Prime Factor
-- https://projecteuler.net/problem=3

import Prelude hiding (max)

primeFactors :: Integer -> [Integer]
primeFactors max = go max 3 [] where
  go n z pf
    | (>) ((*) z z) max = pf
    | (==) (rem n z) 0 = go (quot n z) z (z : pf)
    | otherwise = go n ((+) z 2) pf

solution :: Integer -> Integer
solution max = head (primeFactors max)
