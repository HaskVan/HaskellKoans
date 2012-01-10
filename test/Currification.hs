module Currification (tests) where

import Test.Framework (Test)
import Test.Framework.Providers.HUnit (testCase)
import Test.HUnit (assertBool, assertEqual)

tests :: [Test]
tests = 
    [
      testCurrificationPlus
    , testCurrificationMap
    , testCurrificationFilter
    ]

failError msg = 
  const $ error $ "You should try using \x1B[33;1m\"" 
                ++ msg 
                ++ "\"\x1B[0m"

testCurrificationPlus :: Test
testCurrificationPlus = testCase "currification of +" $ do
  let plus2 = failError "(+ <number>)"
  assertEqual "" 2 (plus2 0)
  assertEqual "" 3 (plus2 1)

testCurrificationMap :: Test
testCurrificationMap = testCase "currification of map" $ do
  let addFn = failError "map <some function>"
  assertEqual "" [1..4] (addFn [0..3])
  assertEqual "" [2..5] $ addFn [1..4]

testCurrificationFilter :: Test
testCurrificationFilter = 
    testCase "currification of filter" $ do
      let filterFn = failError "filter <some function>"
      assertEqual "" [2, 4, 6, 8, 10] (filterFn [1..10])
      assertEqual "" [12, 14, 16, 18, 20] (filterFn [11..20])

