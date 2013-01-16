module Main where 

range = [100..999]
allPossible = [ (a, b) | a <- range, b <- range ]

products = map (\(m,n) -> m*n) allPossible

isPalindrom a = show(a) == reverse ( show a)

palindroms = filter (isPalindrom) products

euler_004 = foldl (max) 0 palindroms

riktig :: Bool
riktig = euler_004  == 906609