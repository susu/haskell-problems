

coprime :: (Integral a) => a -> a -> Bool
coprime x y = (gcd x y) == 1
