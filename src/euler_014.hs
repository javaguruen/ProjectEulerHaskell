module Main where 
import MyMath
import qualified Data.Map as Map

euler_014 = foldl maxTuple (0,0) (collatz 999999)

collatz n = map (\x -> (x, length( collatzChain x []))) [1..n]

maxTuple (a,b) (c,d) = 
	if( b> d)
		then (a,b)
	else (c,d)


collatzChain 1 chain = 1 : chain
collatzChain n chain = 
	if isEven n 
		then collatzChain (n `div` 2) (n : chain)
	else collatzChain (3*n+1) (n : chain)

--riktig  = (fst euler_013) == 837799
riktig  = (fst euler_014) == 837799