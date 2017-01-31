module Problem1
    ( problem1
    ) where

multiplesOf3or5 :: Int -> Bool
multiplesOf3or5 x = rem x 3 == 0 || rem x 5 == 0

problem1 :: Int -> [Int]
problem1 maxNum =
  filter multiplesOf3or5 [1..maxNum]
