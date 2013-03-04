module Main where 
import MyMath



triangles 1 x sum arr = arr
triangles n i sum arr = triangles (n-1) (i+1) (sum + i) ( sum+i : arr)
--   7 2 1   [1] 

numberFactors n = 2 + length ( faktors n)
