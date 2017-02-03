module Problem2 (solution) where

lazyFibSeq :: Integer -> Integer -> [Integer]
lazyFibSeq f1 f2 = f1 : lazyFibSeq f2 (f1 + f2)

solution :: Integer -> Integer
solution maxFib = sum $ filter even $ takeWhile (< maxFib) $ lazyFibSeq 1 2
