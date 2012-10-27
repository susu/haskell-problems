module Arithmetic
where

-- isPrime :: (Num a, Integral a) => a -> Bool
-- isPrime x = 

coprime :: (Num a, Integral a) => a -> a -> Bool
coprime x y = (gcd x y) == 1

totient :: (Integral a) => a -> [a]
totient x = filter (coprime x) [1..x]

-- primeFactors :: (Integral a) => a -> [a]
-- primeFactors x =
