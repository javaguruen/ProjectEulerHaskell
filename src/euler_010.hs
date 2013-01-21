module Main where 
import MyMath

euler_010 a = MyMath.sum( filter isPrime [2..a-1] )

riktig :: Bool
riktig = euler_010 2000000 == 142913828922
--riktig = euler_010 10 == 17