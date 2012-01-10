module BasicFunctions where

import Test.Framework (Test)
import Test.Framework.Providers.HUnit (testCase)
import Test.HUnit (assertBool, assertEqual)

tests :: [Test]
tests = 
    [
      testPlus
    , testInc
    , testId
    --, testTake
    --, testHead
    --, testTail
    --, testInit
    --, testLast
    --, testConcat
    --, testReplicate
    --, testRepeat
    ]

failError msg = 
  error $ "\n\tYou should try using \x1B[33;1m\"" 
          ++ msg 
          ++ "\"\x1B[0m"

testPlus :: Test
testPlus = testCase "+ function" $ do
    let result = failError "+ function"
    assertEqual "use plus function" 4 result 

testInc :: Test
testInc = testCase "inc function" $ do
    let result = failError "inc function"
    assertEqual "use inc function" 2 result 

testId :: Test
testId = testCase "id function" $ do
    let result = failError "id function"
    assertEqual "use id function" 1566 result


