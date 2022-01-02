module Test.Main where

import Data.Foldable (maximum)
import Prelude
import Data.Maybe (Maybe(..))
import Test.Miraculix (StorePath, TestTree, runTests, testCase, testGroup, (@?=))

main = runTests tests

tests :: TestTree
tests =
  testGroup "Data.Foldable"
    [ testGroup "maximum"
        [ testCase "addition" $ maximum [ 1, 2, 3 ] @?= Just 3
        ]
    ]
