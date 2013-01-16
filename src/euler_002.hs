module Main where 


lazyFib x y = x:(lazyFib y (x + y))
fib = lazyFib 1 2
euler_002 =  foldl (+) 0 ( filter (even2) (takeWhile (<3999999) fib) )
even2 a = mod a 2 == 0

riktig :: Bool
riktig = euler_002  == 4613732