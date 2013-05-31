module Main (main) where

import Test.Hspec (Spec, describe, it)
import Test.HUnit (assertBool)
import Test.Hspec.Runner (hspecWith , defaultConfig, Config(..), configFilterPredicate)
import qualified BasicFunctions
import qualified Lists
import qualified Currification
import qualified BasicIO
import qualified ParserCombinators
import System.Environment (getArgs)
import Data.List (isInfixOf)

p :: String -> ([String], String) -> Bool
p a ([b], _) = a == b
p _ _ = False

main :: IO ()
main = do
  args <- getArgs
  let predFilter = case args of
                     (a : _) -> Just $ p a
                     _ -> Nothing
  hspecWith (defaultConfig { configFastFail = True, configFilterPredicate = predFilter }) $ do
    BasicFunctions.koans
    Lists.koans
    Currification.tests
    BasicIO.tests
    ParserCombinators.tests
  return ()
