-- These problems from projecteuler.net
--
-- Problem 1
-- The sum of the squares of the first ten natural numbers is,
--
-- 1^2 + 2^2 + ... + 10^2 = 385
-- The square of the sum of the first ten natural numbers is,
--
-- (1 + 2 + ... + 10)^2 = 552 = 3025
-- Hence the difference between the sum of the squares of the
-- first ten natural numbers and the square of the sum is 3025 - 385 = 2640.
--
-- Find the difference between the sum of the squares of the first one hundred
-- natural numbers and the square of the sum.

sumOfSquares :: Num a => [a] -> a
sumOfSquares x = sum $ map (^2) x

squareOfSum :: Num a => [a] -> a
squareOfSum x = (sum x)^2

difference :: Num a => [a] -> a
difference x = abs( (squareOfSum x) - (sumOfSquares x) )

solution = difference [1..100]
