-- These problems from projecteuler.net
--
-- Problem 5
-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

import Numbering

dividable_by :: Int -> [Int] -> Bool
dividable_by d xs = (divisors == xs)
    where divisors = filter (dividable d) xs

-- it is more than enough to check multiples of 2520
multiples_of :: Int -> [Int]
multiples_of x = map (x*) [1..]

solution = head $ [ x | x <- (multiples_of 2520), dividable_by x [1..20] ]
