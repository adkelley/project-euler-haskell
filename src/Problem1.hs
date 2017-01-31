module Problem1
    ( problem1
    ) where

multiplesOf3or5 :: Int -> Bool
multiplesOf3or5 x = rem x 3 == 0 || rem x 5 == 0

answer ::  Int -> [Int]
answer maxNum = filter multiplesOf3or5 [1..(maxNum-1)]

problem1 :: IO ()
-- problem1 = putStrLn "Now I'm watching the build and saying something"
problem1 =
  print $ answer 1000
