-- These problems from projecteuler.net
--
-- Problem 1
-- If we list all the natural numbers below 10 that are multiples of 3 or 5,
-- we get 3, 5, 6 and 9. The sum of these multiples is 23.
-- Find the sum of all the multiples of 3 or 5 below 1000.
--

mpy_of :: (Integral a, Eq a) => a -> a -> Bool
mpy_of x y = (x `mod` y) == 0

mpy_of_35 :: (Integral a, Eq a) => a -> Bool
mpy_of_35 x = (x `mpy_of` 3) || (x `mpy_of` 5)

find_them = filter (mpy_of_35) [0..999] -- below 1000, hehe

solution = sum (find_them)

