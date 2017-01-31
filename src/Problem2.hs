module Problem2
    ( problem2
    ) where

fibonacciSeq :: Integer -> [Integer]
fibonacciSeq maxVal = go 0 1 [1, 0] where
  go f1 f2 acc =
    let fn = (f1 + f2) in
      if fn < maxVal then go f2 fn (fn : acc) else acc

problem2 :: Integer
problem2 = sum $ filter even $ fibonacciSeq 4000000
