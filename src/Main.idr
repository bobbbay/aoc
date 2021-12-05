module Main

import Solutions.Day1

import AoC
import Data.String

parse : String -> List Integer
parse = map cast . lines

day01 : Day
day01 = MkDay 1 [
  MkDayPart "Part 1" (pure . parse) (pure . solvePart1)
]

days : List Day
days = [
    day01
]

main : IO ()
main = run {year = 2021, inputDir = "input", days = days}
