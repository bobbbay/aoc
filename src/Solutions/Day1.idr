module Solutions.Day1

import AoC

import Data.List
import Data.Maybe

interweave : List Integer -> List Integer -> Integer
interweave (x::xs) (y::ys) = if x < y then 1 + interweave xs ys else 0 + interweave xs ys
interweave _ _             = 0

export
solvePart1 : List Integer -> Integer
solvePart1 xs = interweave xs (fromMaybe [] $ tail' xs)
