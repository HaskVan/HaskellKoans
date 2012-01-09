{-# LANGUAGE OverloadedStrings #-}
module ParserCombinators (tests) where

import Test.Framework (Test)
import Test.Framework.Providers.HUnit (testCase)
import Test.HUnit (assertBool, assertEqual)
import qualified Data.Attoparsec.Text as P

put_parser_here = undefined

tests :: [Test]
tests = 
    [
      testDigitParser
    ]

testDigitParser :: Test
testDigitParser = testCase "digit parser" $ do
    let result = P.parseOnly put_parser_here "5"
    case result of
      Left e -> assertBool e False
      Right answer -> assertEqual "wrong parser" "5" answer
