module Main where 

r = [1..1000]
trips = [ (a,b,c) | a <- r, b<-r, c <- r, a<b, b<c, a+b+c==1000, a*a+b*b==c*c]

solution =  head ( take 1 trips )

euler_009 (x,y,z) = x*y*z 

riktig :: Bool
riktig = euler_009 solution == 31875000