{-
This module contains koans for the most basic functions
in Haskell 
-}
module BasicFunctions (koans) where

import Test.Hspec (Spec, describe, it)
import Test.HUnit (assertBool, assertEqual)

import Util

koans :: Koan
koans = describe "BasicFunctions" $ do
    -- * Arithmetic Operators
    koanPlus
    koanMinus
    koanProd

    -- * Logical Operators
    koanAnd
    koanOr
    koanNot

    -- * Basic Parsing functions
    koanRead
    koanReads

    -- * Functional utilities
    koanId

----------------------------------------------------------------------
--
-- Arithmetic Operations
--
----------------------------------------------------------------------

koanPlus :: Koan
koanPlus = koan "(+) function" $ do
    -- REPLACE: replaceValue with correct value
    -- let result = replaceValue "(+)"

    -- SOLUTION: Check assignment to result
    let result = 2 + 2
    assertEqual "use (+) function" 4 result

koanMinus :: Koan
koanMinus = koan "(-) function" $ do
    -- REPLACE: replaceValue with correct value
    let result = replaceValue "(-)"
    assertEqual "use (-) function" 10 result

koanProd :: Koan
koanProd = koan "(*) function" $ do
    -- REPLACE: replaceValue with correct value
    let result = replaceValue "(*)"
    assertEqual "use (*) function" 6 result

----------------------------------------------------------------------
--
-- Logical Operators
--
----------------------------------------------------------------------

koanAnd :: Koan
koanAnd = koan "(&&) function" $ do
   -- REPLACE: replaceValue with correct value
   let result = replaceValue "(&&)"
   assertEqual "use (&&) function" False result

koanOr :: Koan
koanOr = koan "(||) function" $ do
   -- REPLACE: replaceValue with correct value
   let result = replaceValue "(||)"
   assertEqual "use (||) function" True result

koanNot :: Koan
koanNot = koan "not function" $ do
   -- REPLACE: replaceValue with correct value
   let result = replaceValue "not"
   assertEqual "use (not) function" False result

----------------------------------------------------------------------
--
-- Basic Transformation from String to types
--
----------------------------------------------------------------------

koanRead :: Koan
koanRead = koan "read function" $ do
    -- REPLACE: replaceValue with correct value
    let result = replaceValue "read"
    assertEqual "use read function" 1566 result

koanReads :: Koan
koanReads = koan "reads function" $ do
    -- REPLACE: replaceValue with correct value
    let result = replaceValue "reads"
    assertEqual "use reads function" [(1566, " other string")] result

----------------------------------------------------------------------
--
-- Identity function
--
----------------------------------------------------------------------

koanId :: Koan
koanId = koan "id function" $ do
    -- REPLACE: replaceValue with correct value
    let result = replaceValue "id"
    assertEqual "use id function" 1566 result

