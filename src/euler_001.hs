module Main where 
import Data.List

euler_001 :: Int -> Int
euler_001 n =  foldl (+) 0 (unike n)

unike :: Int -> [Int] 
unike n = nub ( treere (n-1) ++ femmere (n-1) )

treere :: Int  -> [Int]
treere n = [3,6 .. n]

femmere :: Int  -> [Int]
femmere n = [5,10 .. n]

riktig :: Bool
riktig = euler_001 (1000) == 233168