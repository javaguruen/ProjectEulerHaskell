module Main where 
import Data.Char

totalsum n = show (2^n)

tverrsum n = map (\a -> ord a - ord '0' ) ( totalsum n) 

euler_016 n = foldl (+) 0 ( tverrsum n ) 

riktig  = (euler_016 1000) == 1366