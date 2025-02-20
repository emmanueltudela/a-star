module Main where

import Grid
import System.Exit (exitFailure)

testDim :: IO ()
testDim =
  let g1 = [[Wall, Wall], [Wall, Wall]]
      g2 = [[Wall, Wall, Wall], [Wall, Wall, Wall]]
  in  if Grid.dim g1 == (2, 2) && Grid.dim g2 == (3, 2) then
        do return ()
      else
        do exitFailure

testGet :: IO ()
testGet =
  let g = [[Wall, Grass], [Wall, Grass]]
  in  if Grid.get g (0, 0) == Just Wall &&
         Grid.get g (1, 1) == Just Grass &&
         Grid.get g (1, 3) == Nothing then
        do return ()
      else
        do exitFailure

main = do
  testDim
  testGet
