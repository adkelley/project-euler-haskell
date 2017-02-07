module Main where

import qualified Problem1
import qualified Problem2
import qualified Problem3
import qualified Problem4
import qualified Problem5
import qualified Problem6
import qualified Problem7

main :: IO ()
main = do
  putStrLn $ "Problem 7: " ++ show (Problem7.solution 10001)
  putStrLn $ "Problem 6: " ++ show (Problem6.solution 100)
  putStrLn $ "Problem 5: " ++ show (Problem5.solution 20)
  putStrLn $ "Problem 4: " ++ show (Problem4.solution 100)
  putStrLn $ "Problem 3: " ++ show (Problem3.solution 13195)
  putStrLn $ "Problem 2: " ++ show (Problem2.solution 4000000)
  putStrLn $ "Problem 1: " ++ show (Problem1.solution 999)
