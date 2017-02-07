module Problem7
    ( solution
    ) where

isPrime :: Integer -> Bool
isPrime num = go num 2 where
  go num i
    | (==) i 6 = True
    | (==) (rem num i) 0 = False
    | otherwise = go num (i + 1)

-- starting from the 4th prime
nthPrimeFactor :: Integer -> Integer
nthPrimeFactor nth = go 4 8 7 where
  go n z prime
    | (==) n nth = prime
    | isPrime z = go (n + 1) (z + 1) z
    | otherwise = go n (z + 1) prime

solution :: Integer -> Integer
solution 1 = 2
solution 2 = 3
solution 3 = 5
solution n = nthPrimeFactor n
