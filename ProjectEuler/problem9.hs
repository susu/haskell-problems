-- These problems from projecteuler.net
--
-- Problem 9
-- A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
--
-- a^2 + b^2 = c^2
-- For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
--
-- There exists exactly one Pythagorean triplet for which a + b + c = 1000.
-- Find the product abc.

-- NOT TESTED
{- TODO needs some (math based) optimization
pithag :: (Num a, Eq a, Ord a) => [a] -> [(a,a,a)]
pithag xs = [ (a,b,c) | a <- xs,
                        b <- xs,
                        c <- xs,
                a + b + c == 1000,
                a^2 + b^2 == c^2 ]

solution = head $ pithag [1..1000]
-}


