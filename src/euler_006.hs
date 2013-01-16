module Main where 


sumSquares n = foldl (+) 0 (map (\a->a*a) [1..n])
squareSum n = sqr ( foldl (+) 0  [1..n] )

sqr n = n*n

euler_006 n = squareSum(n) - sumSquares(n) 

riktig :: Bool
riktig = euler_006 100 == 25164150