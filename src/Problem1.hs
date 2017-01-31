module Problem1
    ( problem1
    ) where

multiples_of_3n5 :: Int -> Bool
multiples_of_3n5 x = rem x 3 == 0 || rem x 5 == 0

answer :: [Int]
answer = filter multiples_of_3n5 [1..10]

problem1 :: IO ()
-- problem1 = putStrLn "Now I'm watching the build and saying something"
problem1 =
  print answer
