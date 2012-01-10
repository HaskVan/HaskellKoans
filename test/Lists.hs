module Lists where

import Test.Framework (Test)
import Test.Framework.Providers.HUnit (testCase)
import Test.HUnit (assertBool, assertEqual)

tests :: [Test]
tests =
    [
      testTake
    , testHead
    , testTail
    , testInit
    , testLast
    , testConcat
    , testReplicate
    , testRepeat
    ]

testTake :: Test
testTake = undefined

testHead :: Test
testHead = undefined

testTail :: Test
testTail = undefined

testInit :: Test
testInit = undefined

testLast :: Test
testLast = undefined

testConcat :: Test
testConcat = undefined

testReplicate :: Test
testReplicate = undefined

testRepeat :: Test
testRepeat = undefined
