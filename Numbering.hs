module Numbering
( dividable
) where

dividable :: Int -> Int -> Bool
dividable x y = (x `mod` y) == 0

