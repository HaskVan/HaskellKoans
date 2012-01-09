module Main (main) where

import Test.Framework (Test, defaultMain, testGroup)
import Test.Framework.Providers.HUnit (testCase)
import Test.HUnit (assertBool)

import qualified ParserCombinators

main :: IO ()
main = defaultMain tests
  where
    tests = 
      [
        testGroup "ParserCombinators" ParserCombinators.tests
      ]

