module Main where 
import System.Environment
import Data.List.Split

summer tall = foldl (+) 0 tall


string2Integer  n = map (\a -> read a::Integer ) ( lines n) 

euler_013 = do
	contents <- readFile "euler_013.txt"   -- use '<-' here so that 'contents' is a String
	return (riktig ( take 10 (show (summer (string2Integer contents)))))

riktig  svar = svar == "5537376230"