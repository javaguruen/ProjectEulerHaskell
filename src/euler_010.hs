module Main where 
import Prelude

isPrime :: Int -> Bool
isPrime 1 = False
isPrime 2 = True
isPrime 3 = True
isPrime n = length (faktors n) == 0

faktors :: Int -> [Int]
faktors n =  filter (\a -> mod n a == 0) [2..( myCeil (sqrt (fromIntegral  n)))]

myCeil :: Double -> Int
myCeil n = ceiling( n + 0.5)

euler_010 a = foldl (+) 0 (filter isPrime [2..a-1] )

riktig :: Bool
riktig = euler_010 2000000 == 142913828922
--riktig = euler_010 10 == 17