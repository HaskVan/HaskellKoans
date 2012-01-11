module Lists where

import Test.HUnit (assertBool, assertEqual)
import Util

koans :: [Koan]
koans =
    [
      koanDrop
    , koanTake
    , koanHead
    , koanTail
    , koanInit
    , koanLast
    , koanConcat
    , koanReplicate
    , koanRepeat
    , koanIterate
    ]

koanDrop :: Koan
koanDrop = koan "drop function" $ do
    -- REPLACE: replaceValue with correct function call
    -- using list [1..10]
    let result = replaceValue "drop"
    assertEqual "use take function" [4,5,6,7,8,9,10] result

koanTake :: Koan
koanTake = koan "take function" $ do
    -- REPLACE: replaceValue with correct function call
    -- using list [1..10]
    let result = replaceValue "take"
    assertEqual "use take function" [1,2,3] result

koanHead :: Koan
koanHead = koan "head function" $ do
    -- REPLACE: replaceValue with correct function call
    -- using list [1..10]
    let result = replaceValue "head"
    assertEqual "use head function" 1 result

koanTail :: Koan
koanTail = koan "tail function" $ do
    -- REPLACE: replaceValue with correct function call
    -- using list [1..10]
    let result = replaceValue "tail"
    assertEqual "use tail function" [2,3,4,5,6,7,8,9,10] result


koanInit :: Koan
koanInit = koan "init function" $ do
    -- REPLACE: replaceValue with correct function call
    -- using list [1..10]
    let result = replaceValue "init"
    assertEqual "use init function" [1,2,3,4,5,6,7,8,9] result

koanLast :: Koan
koanLast = koan "last function" $ do
    -- REPLACE: replaceValue with correct function call
    -- using list [1..10]
    let result = replaceValue "last"
    assertEqual "use last function" 10 result

koanConcat :: Koan
koanConcat = koan "concat function" $ do
    -- REPLACE: replaceValue with correct function call
    -- using list [1..10]
    let result = replaceValue "concat"
    assertEqual "use concat function" [5,6,1,2,3,4,5,6,7,8,9,10] result


koanReplicate :: Koan
koanReplicate = koan "replicate function" $ do
    -- REPLACE: replaceValue with correct function call
    let result = replaceValue "replicate"
    assertEqual "use replicate function" [4,4,4,4] result

koanRepeat :: Koan
koanRepeat = koan "repeat function" $ do
    -- REPLACE: replaceValue with correct function call
    let result = replaceValue "repeat"
    -- NOTE: repeat is an infinite function, that's why we need to use the
    -- take 3. Haskell is a lazy language so it will evaluate only the 3
    -- first elements of the inifite list, assert would try to eval all the
    -- last consuming all memory eventually.
    assertEqual "use repeat function" [1,1,1] (take 3 result)

koanIterate :: Koan
koanIterate = koan "iterate function" $ do
    -- REPLACE: replaceValue with correct function call
    let result = replaceValue "iterate"
    -- NOTE: iterate is an infinite function, that's why we need to use the
    -- take 3. Haskell is a lazy language so it will evaluate only the 3
    -- first elements of the inifite list, assert would try to eval all the
    -- last consuming all memory eventually.
    assertEqual "use iterate function" [1,2,3,4,5] (take 5 result)

