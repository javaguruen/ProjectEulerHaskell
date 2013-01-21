module MyMath where 

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