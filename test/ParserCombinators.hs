{-# LANGUAGE OverloadedStrings #-}
module ParserCombinators (tests) where

import Test.Framework (Test)
import Test.Framework.Providers.HUnit (testCase)
import Test.HUnit (assertBool, assertEqual, Assertion)
import qualified Data.Attoparsec.Text as P

tests :: [Test]
tests =
    [
      testDigitParser
    , testDigitsParser
    , testAtomParser
    ]

failParser :: String -> P.Parser a
failParser parserName =
  fail $ "\n\n\t\x1B[32;1mCheck documentation\x1B[0m of \x1B[33;1m"
         ++ parserName
         ++ "\x1B[0m on:\n\t"
         ++ "http://hackage.haskell.org/packages/archive/attoparsec/latest/doc/html/Data-Attoparsec-Text.html"

assertParse :: (Eq a, Show a) => a -> Either String a -> Assertion
assertParse _ (Left e) = assertBool e False
assertParse expected (Right answer) =
  assertEqual "wrong parser" expected answer

testDigitParser :: Test
testDigitParser = testCase "digit parser" $ do
    -- Change parser with the correct parser to use
    let parser = failParser "digit parser" :: P.Parser Char
    let result = P.parseOnly parser "5"
    assertParse '5' result

testDigitsParser :: Test
testDigitsParser = testCase "sequence of digits parser" $ do
    -- Change parser with the correct parser to use
    let parser = failParser "sequence of digits parser" :: P.Parser String
    let result = P.parseOnly parser "54321"
    assertParse "54321" result

testAtomParser :: Test
testAtomParser = testCase "atom parser" $ do
    -- Change parser with the correct parser to use
    -- 
    -- Here we say atom is a sequence of characters that doesn't have
    -- parenthes or spaces.
    let parser = failParser "atom parser" :: P.Parser String
    assertParse "ab" $ P.parseOnly parser "ab"
    assertParse "a/b" $ P.parseOnly parser "a/b"
    assertParse "a/b" $ P.parseOnly parser "a/b c"
