module Problem2
    ( problem2
    ) where

lazyFibSeq :: Integer -> Integer -> [Integer]
lazyFibSeq f1 f2 = f1 : lazyFibSeq f2 (f1 + f2)

problem2 :: Integer
problem2 = sum $ filter even $ takeWhile (< 4000000) $ lazyFibSeq 1 1
