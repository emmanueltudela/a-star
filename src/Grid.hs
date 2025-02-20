module Grid
( Cell(..)
, Grid
, dim
, get
) where

data Cell = Grass | Wall deriving (Eq, Show)
type Coord = (Int, Int)
type Grid = [[Cell]]

gridWidth :: Grid -> Int
gridWidth [] = 0
gridWidth (l:_) = length l

gridHeight :: Grid -> Int
gridHeight g = length g

dim :: Grid -> (Int, Int)
dim g = (gridWidth g, gridHeight g)

get :: Grid -> Coord -> Maybe Cell
get g (x, y)
  | x > (gridWidth g) || x < 0 = Nothing
  | y > (gridHeight g) || y < 0 = Nothing
  | otherwise = Just (g!!y!!x)
