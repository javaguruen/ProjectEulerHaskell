module Main where 
import Data.List

euler_001 :: Int -> Int
euler_001 n =  foldl (+) 0 ( filter (\x -> mod x 3 == 0 || mod x 5 == 0) [1 .. n-1] )

riktig :: Bool
riktig = euler_001 (1000) == 233168