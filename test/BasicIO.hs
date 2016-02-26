module BasicIO (tests) where

import Test.Hspec (Spec, describe, it)
import Test.HUnit (assertBool, assertEqual)

tests :: Spec
tests = describe "BasicIO" $ do
    testReadingChar
    testReadingLine

failIO :: String -> IO a
failIO fnName =
    fail $
      "\n\n\t\x1B[32;1mCheck documentation\x1B[0m of \x1B[33;1m"
      ++ fnName
      ++ "\x1B[0m on:\n\t"
      ++ "http://hackage.haskell.org/packages/archive/base/latest/doc/html/Prelude.html"

testReadingChar :: Spec
testReadingChar = it "getChar" $ do
    putStrLn "Write: \"a\" to pass this test: "
    -- NOTE: replace 'failIO' with the actual function
    result <- failIO "getChar"
    assertEqual ""
                'a'
                result

testReadingLine :: Spec
testReadingLine = it "getLine" $ do
    putStrLn "Write: \"burrito\" to pass this test: "
    -- NOTE: replace 'failIO' with the actual function
    result <- failIO "getLine"
    assertEqual ""
                "burrito"
                result

