module BasicFunctions where

import Test.Framework (Test)
import Test.Framework.Providers.HUnit (testCase)
import Test.HUnit (assertBool, assertEqual)

tests :: [Test]
tests = 
    [
      testPlus
    , testId
    ]

failError msg = 
  error $ "\n\tYou should try using \x1B[33;1m\"" 
          ++ msg 
          ++ "\"\x1B[0m"

testPlus :: Test
testPlus = testCase "+ function" $ do
    -- SOLUTION: Check assignment to result
    let result = 2 + 2
    assertEqual "use plus function" 4 result 

testId :: Test
testId = testCase "id function" $ do
    -- REPLACE: failError with correct function call
    let result = failError "id function"
    assertEqual "use id function" 1566 result


