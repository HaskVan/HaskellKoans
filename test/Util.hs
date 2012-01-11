module Util where

import qualified Data.Map as Map
import Test.Framework (Test)
import Test.Framework.Providers.HUnit (testCase)

type Koan = Test
type FunctionName = String
type Url = String

preludeUrl :: Url
preludeUrl = "http://hackage.haskell.org/packages/archive/base/latest/doc/html/Prelude.html"

functionUrl :: Url -> FunctionName -> Url
functionUrl base fnName =
    base ++ "#v:" ++ fnName

fnMap :: Map.Map FunctionName Url
fnMap = Map.fromList
    [
      ("id",  functionUrl preludeUrl "id")
    , ("(+)",   functionUrl preludeUrl "-43-")
    , ("(-)",   functionUrl preludeUrl "-45-")
    , ("(*)",   functionUrl preludeUrl "-42-")
    , ("(&&)",  functionUrl preludeUrl "-38--38-")
    , ("(||)",  functionUrl preludeUrl "-124--124-")
    , ("not", functionUrl preludeUrl "not")
    , ("read", functionUrl preludeUrl "read")
    , ("reads", functionUrl preludeUrl "reads")
    , ("drop", functionUrl preludeUrl "drop")
    , ("take", functionUrl preludeUrl "take")
    , ("head", functionUrl preludeUrl "head")
    , ("tail", functionUrl preludeUrl "tail")
    , ("init", functionUrl preludeUrl "init")
    , ("last", functionUrl preludeUrl "last")
    , ("concat", functionUrl preludeUrl "concat")
    , ("replicate", functionUrl preludeUrl "replicate")
    , ("repeat", functionUrl preludeUrl "repeat")
    , ("iterate", functionUrl preludeUrl "iterate")
    ]

getFunctionUrl :: FunctionName -> Url
getFunctionUrl = (maybe "" id) . (flip Map.lookup fnMap)

yellow s = "\x1B[33;1m" ++ s ++ "\x1B[0m"

replaceValue name =
  error $ "\n\tYou need to implement a solution using the "
        ++ "\x1B[31;1m"
        ++ name 
        ++ "\x1B[0m function"
        ++ "\n\t\x1B[32;1mCheck documentation\x1B[0m for \x1B[31;1m"
        ++ name
        ++ "\x1B[0m in:\n\n\t\x1B[37;4m"
        ++ getFunctionUrl name
        ++ "\x1B[0m"

replaceFunction name =
  const . 
  error $ "\n\t\x1B[32;1mCheck documentation\x1B[0m for \x1B[31;1m"
        ++ name
        ++ "\x1B[0m in:\n\n\t\x1B[37;4m"
        ++ getFunctionUrl name
        ++ "\x1B[0m"

koan msg action = testCase (yellow msg) action

