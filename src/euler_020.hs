module Main where 
import Data.Char
import MyMath

fakt n = show (factorial n)

euler_020 n = tverrsum ( fakt n )

riktig  = (euler_020 100) == 648
