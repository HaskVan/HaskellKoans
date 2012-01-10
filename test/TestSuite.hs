module Main (main) where

import Test.Framework (Test, defaultMain, testGroup)
import Test.Framework.Providers.HUnit (testCase)
import Test.HUnit (assertBool)

import qualified BasicFunctions
import qualified Currification
import qualified BasicIO
import qualified ParserCombinators

main :: IO ()
main = defaultMain tests
  where
    tests = 
      [
        testGroup "BasicFunctions" BasicFunctions.tests
      , testGroup "Currification" Currification.tests
      , testGroup "BasicIO" BasicIO.tests
      , testGroup "ParserCombinators" ParserCombinators.tests
      ]

