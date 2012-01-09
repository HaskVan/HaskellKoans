{-# LANGUAGE OverloadedStrings #-}
module ParserCombinators (tests) where

import Test.Framework (Test)
import Test.Framework.Providers.HUnit (testCase)
import Test.HUnit (assertBool, assertEqual)
import qualified Data.Attoparsec.Text as P

tests :: [Test]
tests = 
    [
      testDigitParser
    ]

--failParser :: P.Parser ()
failParser parserName = 
  fail $ "\n\n\t\x1B[32;1mCheck documentation\x1B[0m of \x1B[33;1m" 
         ++ parserName 
         ++ "\x1B[0m on:\n\t" 
         ++ "http://hackage.haskell.org/packages/archive/attoparsec/0.10.1.0/doc/html/Data-Attoparsec-Text.html"

testDigitParser :: Test
testDigitParser = testCase "digit parser" $ do
    -- Change parser with the correct parser to use
    let parser = failParser "digit parser"
    let result = P.parseOnly parser "5"
    case result of
      Left e -> assertBool e False
      Right answer -> assertEqual "wrong parser" '5' answer
