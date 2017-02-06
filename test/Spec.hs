module Main where

import Test.Hspec
import Problem1 (solution)
import Problem2 (solution)
import Problem3 (solution)
import Problem4 (solution)
import Problem5 (solution)
import Problem6 (solution)

main :: IO ()
main = hspec $ do
  describe "Problems" $ do
    it "1: The sum of multiples 3 & 5 < 10 should be 23" $ do
      Problem1.solution 9 `shouldBe` 23
    it "2: The sum of the first 10 even-valued fibonacci terms should be 44" $ do
      Problem2.solution 89 `shouldBe` 44
    it "3: The largest prime factor of 13195 should be 29" $ do
      Problem3.solution 13195 `shouldBe` 29
    it "4: The largest palindrome of the product of two 2-digits numbers should be 9009" $ do
      Problem4.solution 10 `shouldBe` 9009
    it "5: The smallest multiple of numbers from 1 to 10 should be 2520" $ do
      Problem5.solution 10 `shouldBe` 2520
    it "6: The Sum square difference of the first 10 natural numbers shoudld be 2640" $ do
      Problem6.solution 10 `shouldBe` 2640
