module MyMath where 
import Data.Char
import Data.List

isPrime :: Int -> Bool
isPrime 1 = False
isPrime 2 = True
isPrime 3 = True
isPrime n = length (faktors n) == 0

faktors :: Int -> [Int]
faktors n =  filter (\a -> mod n a == 0) [2..( myCeil (sqrt (fromIntegral  n)))]


myCeil :: Double -> Int
myCeil n = ceiling( n + 0.5)

sum :: [Int] -> Int
sum [] = 0
sum a = foldl (+) 0 a

isEven n =  n `mod` 2 == 0

char2Int :: Char -> Int
char2Int c = ord c - ord '0'

tverrsum :: String ->  Int
tverrsum n =  foldl (+) 0 ( map ( char2Int ) ( n ) )

--factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial(n-1)
--factorial n = product [1..n]
