module Main where 
import Data.Char
import MyMath

totalsum n = show (2^n)

euler_016 n = tverrsum ( totalsum n )

riktig  = (euler_016 1000) == 1366