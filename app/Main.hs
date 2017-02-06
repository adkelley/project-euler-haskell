module Main where

import qualified Problem1
import qualified Problem2
import qualified Problem3
import qualified Problem4

main :: IO ()
main = do
  putStrLn $ "Problem 1: " ++ show Problem1.solution
  putStrLn $ "Problem 2: " ++ show (Problem2.solution 4000000)
  putStrLn $ "Problem 3: " ++ show (Problem3.solution 13195)
  putStrLn $ "Problem 4: " ++ show (Problem4.solution 100)
